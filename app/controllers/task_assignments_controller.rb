class TaskAssignmentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @user = User.find(params[:user])
    @assignment = TaskAssignment.new(assignee: @user, assignment: @task)

    if @assignment.save
      redirect_to task_path(@task), :notice => "Your task has been successfully assigned to #{@user.email}"
    else
      redirect_to task_path(@task), :alert => "Task could not be assigned."
    end
  end

  def destroy
    @task = Task.find(params[:task_id])
    user = User.find(params[:user])
    assignment = TaskAssignment.find_by(assignment: @task, assignee: user)

    TaskAssignment.destroy(assignment)
    redirect_to task_path(@task), :notice => "Task has been unassigned."
  end
end
