class InstructorsController < ApplicationController

    def index 
        render json: Instructor.all
    end

    def login
        if request.post?
            user = Instructor.find_by(instructor_code: params[:instructor_code], email: params[:email], password: params[:password])
            if user
                render json: user, status: :created
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
end
