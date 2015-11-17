class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to moods_url, notice: "You're in!"
  	else
  		render "new"
  	end	
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to moods_url notice: "You're out!"
  end
end
