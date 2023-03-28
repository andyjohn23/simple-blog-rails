class AddPostToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :post, null: false, foreign_key: true
  end
end
