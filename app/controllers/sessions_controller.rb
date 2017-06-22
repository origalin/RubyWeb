class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      # 登入用户，然后重定向到用户的资料页面
      log_in user
      redirect_to user
    else
      # 创建一个错误消息
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
