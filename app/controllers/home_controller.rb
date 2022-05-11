class HomeController < ApplicationController
    def index
        @tasks = current_user.tasks.with_attached_folder
        @users = User.where.not(id: current_user.id)
    end

    
end