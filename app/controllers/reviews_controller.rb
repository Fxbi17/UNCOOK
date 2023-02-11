class ReviewsController < ApplicationController

  def new
    @dish = Dish.find(params[:dish_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @dish = Dish.find(params[:dish_id])
    @review.dish = @dish
    @review.user_id = current_user.id
    if @review.save
      redirect_to dish_path(@dish)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
