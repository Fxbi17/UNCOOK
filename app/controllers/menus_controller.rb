class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @menu.update(menu_params)
    redirect_to menu_path(@menu)
  end

  private

  def set_menu
    @menu = Menu.find(params[:id])
  end

  def meu_params
    params.require(:menu).permit(:user_id)
  end
end
