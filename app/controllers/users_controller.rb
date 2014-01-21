class UsersController < ApplicationController

  def index
    #render :text => "I'm in the index action, stupid human!"
    render :json => User.all
  end

  def create
    user = User.new(params[:user])

    if user.save
      render :json => user
    else
      render :json => user.errors.full_messages, :status => :unprocessable_entity
    end
  end

  def show
    render :json => User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    render :json => user

  end

  def destroy
    user = User.find(params[:id])
    render :json => user.delete
  end
end
