class DishesController < ApplicationController

  # def index
  #   @dishes = Dish.all
  # end

# Search bar

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to dish_path(@dish)
    else
      render :new
    end
  end

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

  def add_to_favorite
    @dish = Dish.find(params[:dish_id])
    current_user.favorite(@dish)
    redirect_to dish_path(@dish)
  end

  def remove_from_favorite
    @dish = Dish.find(params[:dish_id])
    current_user.unfavorite(@dish)
    redirect_to dish_path(@dish)
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :numpers, :recipie)
  end

end
