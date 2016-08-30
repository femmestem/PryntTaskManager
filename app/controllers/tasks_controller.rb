class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params.merge! creator: current_user)

    if @task.save
      redirect_to tasks_path, :notice => "Your task was successfully created."
    else
      redirect_to new_task_path, :alert => "Your task could not be saved. Make sure all fields are filled out and try again."
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update_attributes(task_params)
      redirect_to task_path, :notice => "Your task has been updated."
    else
      redirect_to edit_task_path, :notice => "Your task could not be saved. Make sure all fields are filled out and try again."
    end
  end

  def destroy
    task = Task.destroy(params[:id])
    redirect_to tasks_path, :notice => "Your task \"#{task}\" has been deleted."
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
