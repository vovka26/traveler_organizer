class ApplicationController < ActionController::Base

  helper_method :current_user

  def current_user
    if @currenet_user
      @current_user
    else
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      else
        nil
      end
    end
  end
end
