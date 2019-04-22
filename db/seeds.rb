# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

my_user = User.first_or_create(email: "sjpete1234@gmail.com", password: "12345678",)
my_user.save


url = "https://www.foodbusinessnews.net/ext/resources/2019/1/MonsterReign_Lead.jpg?1547825240"
new_post = Post.new(comment: "New find in Japan and my first post yo!" )
new_post.remote_photo_url = url
new_post.user = my_user
new_post.save

 # Review.create(likeness: 4, tasteness: 2, recommend: 2, post_id: new_post)

puts "Finish user create and seed"
