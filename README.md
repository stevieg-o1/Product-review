## MODELS
three models created: User, Review, and Product.
all istance methods tested and working
testing examples on each model created as comments.
alls associations made.
Migrations done and database seeded from seeds.rb.

## ERD DIAGRAM
https://drive.google.com/file/d/1bgu-vGOIia6wDWn8dOVPSHUvQSrpAyew/view?usp=sharing

## SCHEMA

        create_table "products", force: :cascade do |t|
            t.string "name"
            t.integer "price"
        end

        create_table "reviews", force: :cascade do |t|
            t.integer "user_id"
            t.string "product_id"
            t.string "star_rating"
            t.string "comment"
        end

        create_table "users", force: :cascade do |t|
            t.string "name"
        end



##  Topics covered



This assignment focused on the following topics

    Active Record Migrations
    Active Record Associations
    Class and Instance Methods
    Active Record QueryingProject Setup
