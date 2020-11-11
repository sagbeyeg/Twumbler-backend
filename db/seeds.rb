# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "🗑 Deleting old users, posts and comments..." 
User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "🍝 Seeding users..."
10.times do
  user = User.create!(
    name: Faker::TvShows::Buffy.character,
    age: rand(13..100),
    email: Faker::Internet.email,
    bio: Faker::TvShows::Buffy.quote
  )
  puts "🍝 Seeding posts..."
  5.times do
    post = Post.create!(
      title: Faker::Movies::HitchhikersGuideToTheGalaxy.location,
      content: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
      user_id: user.id
    )
    puts "🍝 Seeding comments..."
    5.times do
      Comment.create!(
      post_id: post.id,
      user_id: user.id,
      content: Faker::Hacker.say_something_smart
      )
    end
  end 
end

puts "🎉 Done!"