class ReviewsController < ApplicationController

  def new
    @dish = Dish.find(params[:dish_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:title, :content)
  end
end
