class UserController < ApplicationController
  def index
  	@title = "RShare Gallery"
  end

  def register
  	@title = "Sign Up"
  	if request.post? and params[:user]
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "User #{@user.screen_name} created!"
			redirect_to :action => "index"
		end
	end
  end
end
