class InstructorsController < ApplicationController

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
