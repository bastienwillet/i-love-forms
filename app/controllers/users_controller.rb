class UsersController < ApplicationController
  def newformfor
    @user = User.new
  end

  def createform
    @user = User.create(username: params[:username], email: params[:email], bio: params[:bio])
    test
  end

  def createformtag
    @user = User.create(username: params[:username], email: params[:email], bio: params[:bio])
    test
  end

  def createformfor
    @user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio])
    test
  end

  def test
    if @user.new_record? == false
      redirect_to :action => "show", :controller => "home", :username => @user.username
    else
      redirect_to '/error'
    end
  end
end