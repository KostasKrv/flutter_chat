# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
  user = User.create name: Faker::LeagueOfLegends.champion, email: "user#{n}@example.com",
    password: "123456789"
  user.create_user_room read_at: Time.zone.now
end
