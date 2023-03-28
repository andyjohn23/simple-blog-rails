class ReviewsController < ApplicationController
  def index
    reviews = Review.all
    render json: reviews
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def create
    review = Review.create(find_review)
    render json: review
  end

  def update
    review = Review.find(params[:id])
    review.update(find_review)
    render json: review
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    head :no_content
  end

  private

  def find_review
    params.permit(:message, :post_id)
  end
end
