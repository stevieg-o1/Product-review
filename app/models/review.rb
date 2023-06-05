class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    # review1 = Review.first
    # review1.print_review
   def print_review
    "#{product.name} by #{user.name}: #{self.star_rating}. #{self.comment}"
   end

end