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
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
