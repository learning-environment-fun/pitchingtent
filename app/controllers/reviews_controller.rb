class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @tent = Tent.find(params[:tent_id])
    @review.tent = @tent
    @review.user = current_user
    if @review.save
      redirect_to tent_path(@tent), notice: "Thanks for your review!"
    else
      raise
      render 'tents/show'
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
