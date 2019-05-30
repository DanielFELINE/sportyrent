class UsersController < ApplicationController
before_action :set_user, only: [:show, :reservations, :myprecious]

  def create
    raise
  end

  def show
  end

  def reservations
  end

  def myprecious
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end

  def article_params
    params.require(:user).permit(:first_name, :last_name, :picture, :address, :phone_number)
  end
end
