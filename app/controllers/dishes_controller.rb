class DishesController < ApplicationController

  # def index
  #   @dishes = Dish.all
  # end

# Search bar

  def index
    if params[:query].present?
      @dishes = Dish.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @dishes = Dish.all
    end
  end


  def show
    @dish = Dish.find(params[:id])
  end
end
