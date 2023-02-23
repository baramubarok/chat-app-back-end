class ApplicationController < ActionController::API
    def create_user
        User.create(
            username: params[:name]
        )
    end
end
