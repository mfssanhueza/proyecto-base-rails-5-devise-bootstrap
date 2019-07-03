# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


AdminUser.destroy_all
User.destroy_all
Comment.destroy_all
Post.destroy_all


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create({
    email: 'somemail@mailcl',
    password: '123456',
    password_confirmation: '123456'
})

User.create({
    email: 'somemailtwo@mailcl',
    password: '123456',
    password_confirmation: '123456'
})

10.times do |i|
 Post.create(
 user: User.order("RANDOM()").first,
 content: Faker::Lorem.paragraph)
end

20.times do |i|
 Comment.create(
 post: Post.order("RANDOM()").first,
 content: Faker::Lorem.paragraph)
end
