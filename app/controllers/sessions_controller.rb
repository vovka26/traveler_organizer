class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to welcome_index_path
    else
      render :new
    end
  end

  def create
    username = params[:username]
    @user = User.find_by(username: username)

    if @user && @user.authenticate(params[:password])
      session["user_id"] = @user.id
      redirect_to welcome_index_path
    else
      flash.notice = "No user found with that name and/or password"
      render :new
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to login_path
  end
end
