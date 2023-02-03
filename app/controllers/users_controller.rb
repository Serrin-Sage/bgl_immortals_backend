class UsersController < ApplicationController

    def index
        render json: User.all
    end
    def login
        if request.post?
            user = User.find_by(parent_code: params[:parent_code], email: params[:email], password: params[:password])
            if user
                render json: user, status: 201
            else
                render json: { error: 'Invalid credentials or User not found' }, status: :unauthorized
            end
        else
            render json: { error: 'Invalid request method' }, status: :bad_request
        end
    end
end
