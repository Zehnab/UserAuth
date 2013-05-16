class UsersController < ApplicationController
  def new
    @user =User.new
  end
  
  def create
    @user = User.new(params[:users])
    if @user.save
     redirect_to root_url, :notice => "signed Up!"
    else
      render "new"
    end
  end
end
