class UserControllerController < ApplicationController
  def new
  end
  def user
  	user = User.last
  	@username = user.username
  	@bio = user.bio  	
  end
  def create
  	user = User.new
  	user.username = params[:user]
  	user.bio = params[:description]
  	user.save
  	puts user
  	puts @name = user.username
  	puts valid = user.valid?
  	if valid == false 
  		#puts valid + "b"
  		redirect_to '/error'  		
  	else  	
  		#puts valid + "a"
  		redirect_to "/user/#{@name}"
  	end
  end
  
end
