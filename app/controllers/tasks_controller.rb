class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def show
    @task = Task.find_by_id(params[:id])
  end

  def edit

  end

  def update
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
