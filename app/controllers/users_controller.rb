class UsersController < ApplicationController

  def create
  end
  
  def article_params
    params.require(:user).permit(:first_name, :last_name, :picture, :address, :phone_number)
  end
end
