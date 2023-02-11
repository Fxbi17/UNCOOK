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

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :numpers, :recipie)
  end

end
