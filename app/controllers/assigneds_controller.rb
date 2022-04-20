class AssignedsController < ApplicationController
  def new
    @assign = Assigned.new
    
  end

  def create
    @assigns = Assigned.all
    @assign = Assigned.new(assign_params)
    respond_to do |format|
      if @assign.save
        format.js
        format.html {render :index}
        #redirect_to root_path, notice: "Task Successfully Assigned"
      else 
        format.html {render :index}
      end
    end
  end

  private

  def assign_params
    params.require(:assigned).permit(:user_id, :task_id)
  end
end