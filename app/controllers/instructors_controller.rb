class InstructorsController < ApplicationController
    APP_SECRET = 'secretaperature'
    before_action :authenticate_instructor, only: [:me]

    def me 
        render json: {user: @current_instructor, user_type: "instructor"}, status: 200
    end

    def index 
        render json: Instructor.all
    end

    def login
        if request.post?
            user = Instructor.find_by(instructor_code: params[:instructor_code], email: params[:email])
            if user && user.authenticate(params[:password])
                token = JWT.encode({user_id: user.id}, APP_SECRET, 'HS256')
                user_type = JWT.encode({user_type: "instructor"}, APP_SECRET, 'HS256')
                render json: {user: user, token: token, user_type: "instructor"}, status: :ok
            else
                render json: { error: user.errors.full_messages[0] }, status: :unauthorized
            end
        else
            render json: { error: 'Invalid request method' }, status: :bad_request
        end
    end
    
    def all_students
        instructor = Instructor.find_by(id: params[:id])
        students = instructor.students.order(:id)
        if (students)
            render json: students
        else
            render json: students.errors.full_messages, status: 422
        end
    end

    def create
        code = Code.find_by(number: params[:instructor_code])
        if code.blank?
            render json: {error: "Code Not Found"}, status: 404
        else
            codeCheck = (code.instructor_id == nil && code.user_id == nil)
            if code && codeCheck == true
                user = Instructor.create(instructor_params)
                if user.valid?
                    token = JWT.encode({user_id: user.id}, APP_SECRET, 'HS256')
                    code.update(instructor_id: user.id)
                    render json: {user: user, token: token, user_type: "instructor"}, status: :ok
                else
                    render json: {error: user.errors.full_messages[0]}, status: 422
                end
            elsif codeCheck == false
                render json: {error: "Code already in use"}, status: 422
            else
                render json: {error: "Code Not Found"}, status: 404
            end
        end   
    end

    private

    def instructor_params
        params.permit(:instructor_code, :name, :email, :password)
    end
end

