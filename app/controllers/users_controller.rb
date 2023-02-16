class UsersController < ApplicationController

  def show
    @favorites_dish = current_user.all_favorited 
  end
end
