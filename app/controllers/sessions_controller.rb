class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] and session[:name] != ''
      redirect_to '/'
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end
end
