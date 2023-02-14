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

    def create
        student = Student.new(student_params)
        if student.valid?
            code = Code.new(number: params[:number], user_id: student.id)
            if code.valid?
                student.save
                code = Code.create(number: params[:number], user_id: student.id)
                render json: student, status: :ok
            else
                render json: {error: "Code already in use"}, status: 422
            end
        else
            render json: {error: student.errors.full_messages[0]}, status: 422
        end
    end

    def destroy
        student = Student.find_by(id: params[:id])
        
        if student
            student.destroy
        else
            render json: {error: student.errors.full_messages}, status: 404
        end
    end


    def update
        student = Student.find_by(id: params[:id])

        if student
            student.update(merit_array: {merits: params[:merit]})
            render json: student.merit_array, status: :ok
        else
            render json: {error: "ERROR"}, status: 404
        end
    end

    def change_level
        student = Student.find_by(id: params[:id])
        if student
            student.update(level: params[:level])
            render json: student, status: :ok
        else 
            render json: {error: "Can not update"}, status: 422
        end
    end

    def assign_house
        student = Student.find_by(id: params[:id])
        if student
            student.update(immortal_house: params[:house])
            render json: student, status: :ok
        else 
            render json: {error: "Can not update"}, status: 422
        end
    end

    private

    def student_params 
        params.require(:student).permit(:name, :age, :immortal_house, :level, :instructor_id, merit_array: {merits: []})
    end
end
