class ApplicationController < ActionController::API
    APP_SECRET = 'secretaperature'

    def authenticate_user
        decoded_token = JWT.decode(request.headers['Authorization'], APP_SECRET, true, {:algorithm => 'HS256'})
        user = User.find(decoded_token[0]['user_id'])
        if user
            @current_user = user
        else
            raise 'SECURITY ALERT!'
        end
    end

    def authenticate_instructor
        decoded_token = JWT.decode(request.headers['Authorization'], APP_SECRET, true, {:algorithm => 'HS256'})
        instructor = Instructor.find(decoded_token[0]['user_id'])
        if instructor
            @current_instructor = instructor
        else
            raise 'SECURITY ALERT!'
        end
    end
end
