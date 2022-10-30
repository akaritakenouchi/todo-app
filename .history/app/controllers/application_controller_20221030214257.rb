class ApplicationController < ActionController::Base
    def current_user
        return @current_user if @current_user.present?
    
        if session[:user_id].present?
            @current_user = User.find_by(id: session[:user_id])
        else
            @current_user = User.generate
            session[:login_user_id] = @current_user.id
            @current_user
        end
    end
end
