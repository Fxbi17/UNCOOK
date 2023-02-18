class UsersController < ApplicationController

  def show
    @favorites_dish = current_user.all_favorited

    # creer un menu si l'utilisateur n'en as pas
    if current_user.menu.nil?
      @menu = Menu.create!(user: current_user)
    end
  end

end
