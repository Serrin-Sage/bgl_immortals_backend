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
                render json: {user: user, token: token, user_type: "instructor"}, status: :ok
            else
                render json: { error: 'Invalid credentials' }, status: :unauthorized
            end
        else
            render json: { error: 'Invalid request method' }, status: :bad_request
        end
    end
    
    def all_students
        instructor = Instructor.find_by(id: params[:id])
        students = instructor.students
        if (students)
            render json: students
        else
            render json: students.errors.full_messages, status: 422
        end
    end

    def create
        instructor = Instructor.create(instructor_params)
        if instructor.valid?
            render json: instructor, status: :created
        else
            render json: instructor.errors.full_messages, status: 422
        end
    end

    private

    # def instructor_params
    #     params.permit(:instructor_code, :email, :password, :site, :username).tap do |whitelisted|
    #     whitelisted[:username] = nil 
    #     if whitelisted[:username].blank?
    #     end
    # end
end

