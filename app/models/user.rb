class User < ActiveRecord::Base
    has_many :reviews
    has_many :products , through: :reviews

    # user1 = User.first
    # user1.favorite_product
def favorite_product
   reviews.order(star_rating: :desc).first.product
end

    # user1 = User.second
    # user1.remove_reviews("Whiteboard")
def remove_reviews(product)
    product1 = User.find_by(name: product)
    product_id = product1.id if product1
    reviews.where(product_id: product_id).destroy_all
end

end