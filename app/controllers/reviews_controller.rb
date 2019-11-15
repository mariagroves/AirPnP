class ReviewsController < ApplicationController

  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @toilet = Toilet.find(params[:toilet_id])
    @review.user = current_user
    @review.toilet = @toilet
    if @review.save
      respond_to do |format|
        format.html { redirect_to toilet_path(@toilet) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'toilets/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy

    @review = Review.find(params[:id])
    @toilet = @review.toilet
    @review.destroy
    # redirect_to toilet_path(@toilet)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
