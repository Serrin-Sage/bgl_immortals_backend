class MeritsController < ApplicationController
    def index
        render json: Merit.all
    end

    def category
        merits = Merit.where(category: params[:category])
        if (merits)
            render json: merits
        else 
            render json: {error: merits.errors.full_messages}, status: 422
        end
    end
end
