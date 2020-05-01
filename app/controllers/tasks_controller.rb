class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def change_mark
    @task = Task.find(params[:id])
    if @task.completed == false
      # raise
      @task.completed = true
    else
      # raise
      @task.completed == false
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path(@task)
  end

  def uncheck
    @task = Task.find(params[:id])
    @task.update(completed: true)
    # redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:name, :details, :completed)
  end
end
