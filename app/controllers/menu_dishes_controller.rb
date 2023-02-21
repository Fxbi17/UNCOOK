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
    # @menu_dish.dish.destroy
    # @menu_dish.dish.menu.destroy
    # @menu_dish.dish.menu.current_user.destroy
    # @menu_dish.menu.dish.current_user.destroy
    # @menu_dish.menu.dish.destroy
    # @menu_dish.menu.destroy
    # @menu_dish.menu.current_user.destroy
    redirect_to menu_dish_path, status: :see_other
    # redirect_to dish_menu_dish_path, status: :see_other
    # redirect_to menu_dishes_path, status: :see_other
    # redirect_to dish_menu_dishes_path, status: :see_other
    # redirect_to "/nav-menu", status: :see_other
    # redirect_to "/nav-menu-tab", status: :see_other
  end

end

# controleur menu_dishes
# method create dans le menu_dishes / route
#  quand tu click sa va créer un menu_dishes vide
