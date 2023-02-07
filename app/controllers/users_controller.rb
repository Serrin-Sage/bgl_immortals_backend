class UsersController < ApplicationController
    APP_SECRET = 'secretaperature'
    before_action :authenticate_user, only: [:me]

    def me 
        render json: {user: @current_user}, status: 200
    end

    def index
        render json: User.all
    end
    
    def login
        if request.post?
            user = User.find_by(parent_code: params[:parent_code], email: params[:email])
            if user && user.authenticate(params[:password])
                token = JWT.encode({user_id: user.id}, APP_SECRET, 'HS256')
                render json: {user: user, token: token}, status: 201
            else
                render json: { error: 'Invalid credentials or User not found' }, status: :unauthorized
            end
        else
            render json: { error: 'Invalid request method' }, status: :bad_request
        end
    end

    def create

    end
end
