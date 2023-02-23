class MenuDishesController < ApplicationController

  def create
    @menu_dishes = MenuDish.new
    @menu_dishes.menu = current_user.menu
    @dish = Dish.find(params[:dish_id])
    @menu_dishes.dish = @dish
    if @menu_dishes.save
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @menu_dish = current_user.menu.menu_dishes.find(params[:id])
    @menu_dish.destroy
    redirect_to user_path(current_user), status: :see_other
  end
end
