class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      redirect_to root_path, notice: "Sucessfully created"
    else
      flash[:errors] = @task.errors.full_messages
      render :new
    end
  end

  def show
    @tasks = current_user.tasks
  end

  def showStaffTasks
    @tasks = Task.joins(:assigneds).where(assigneds: {user_id: current_user.id})
  end

  private

  def task_params
    params.require(:task).permit(:files, :description, :folder)
  end
end