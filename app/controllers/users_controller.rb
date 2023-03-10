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
                render json: { error: "Invalid Credentials" }, status: :unauthorized
            end
        else
            render json: { error: 'Invalid request method' }, status: :bad_request
        end
    end

    def create
        student = Student.find_by(name: params[:child_name])
        if student.blank?
            render json: {error: "Student not found"}, status: 404
        else
            code = Code.find_by(user_id: student.id, number: params[:parent_code])
            if student && code
                user = User.create(user_params)
                if user.valid?
                    token = JWT.encode({user_id: user.id}, APP_SECRET, 'HS256')
                    student.update(user_id: user.id)
                    render json: {user: user, token: token, user_type: "parent"}, status: :ok
                else
                    render json: {error: user.errors.full_messages[0]}, status: 422
                end
            else
                render json: {error: "Student or code not found"}, status: 404
            end
        end
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

    private

    def user_params
        params.permit(:parent_code, :name, :email, :password)
    end
end
