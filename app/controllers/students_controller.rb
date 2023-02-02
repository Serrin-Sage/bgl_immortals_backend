class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def show
        student = Student.find_by(id: params[:id])
        if (student)
            render json: student
        else 
            render json: student.errros.full_messages, status: 404
        end
    end

    # def instructor_students
    #     students = Student.where(instructor_id: params[:instructor_id])
    #     if (students.any?)
    #         render json: students
    #     else
    #         render json: "No Students Found", status: 404
    #     end
    # end
end
