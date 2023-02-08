class UsersController < ApplicationController
    APP_SECRET = 'secretaperature'
    before_action :authenticate_user, only: [:me]

    def me 
        render json: {user: @current_user, user_type: "parent"}, status: 200
    end

    def index
        render json: User.all
    end
    
    def login
        if request.post?
            user = User.find_by(parent_code: params[:parent_code], email: params[:email])
            if user && user.authenticate(params[:password])
                token = JWT.encode({user_id: user.id}, APP_SECRET, 'HS256')
                user_type = JWT.encode({user_type: "parent"}, APP_SECRET, 'HS256')
                render json: {user: user, token: token, user_type: "parent"}, status: :ok
            else
                render json: { error: 'Invalid credentials or User not found' }, status: :unauthorized
            end
        else
            render json: { error: 'Invalid request method' }, status: :bad_request
        end
    end

    def create

    end

    def child_details
        user = User.find_by(id: params[:id])
        child = user.students
        if (child)
            render json: child
        else
            render json: {error: child.error.full_messages[0]}, status: 422
        end
    end
end
