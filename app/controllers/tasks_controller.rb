class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit]
  def index
    @tasks = Task.all
  end

  def show
    @task
  end

  def new
    @task = Task.new
  end

  def edit
    @task
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def update

  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
