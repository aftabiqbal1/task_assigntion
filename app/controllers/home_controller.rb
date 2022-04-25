class HomeController < ApplicationController
    def index
        @tasks = current_user.tasks.with_attached_folder
    end
end