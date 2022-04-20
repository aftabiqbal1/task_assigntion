class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: "Sucessfully created"
    else
      render :new
    end
  end

  def show
    @tasks = Task.all
  end

  def showStaffTasks
    @tasks = Task.joins(:assigneds).where(assigneds: {user_id: current_user.id})
  end

  private

  def task_params
    params.require(:task).permit(:files, :description)
  end
end