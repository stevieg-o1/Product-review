class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users , through: :reviews
       
  
    # product1 = Product.first
    # product1.leave_review("john", 4, "Great stapler!")
    def leave_review(user, star_rating, comment)
        username = User.find_by(name: user)
        user_id = username.id if username
        reviews.create(user_id: user_id, product_id: self.id, star_rating: star_rating, comment: comment)
    end
  
  
    # product1 = Product.first
    # product1.print_all_reviews
    def print_all_reviews
        reviews.each do |review|
            review.print_review
        end
    end

     # product1 = Product.first
    # product1.average_rating
    def average_rating
        if reviews.count > 0
            reviews.average(:star_rating).to_f
          else
            0.0
          end
    end
end