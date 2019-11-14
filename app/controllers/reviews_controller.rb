class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @toilet = Toilet.find(params[:toilet_id])
    @review.user = current_user
    @review.toilet = @toilet
    if @review.save
      redirect_to toilet_path(@toilet)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @toilet = Toilet.find(params[:toilet_id])
    @review.destroy
    redirect_to toilet_path(@toilet)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
