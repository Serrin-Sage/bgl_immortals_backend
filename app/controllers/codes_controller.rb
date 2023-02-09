class CodesController < ApplicationController

    def create 
        code = Code.create(number: params[:number])
        if code.valid?
            render json: code, status: :ok
        else
            render json: {error: "Code already in use"}, status: 422
        end
    end
end
