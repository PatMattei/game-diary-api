# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
    User.create(
        username: Faker::Games::SuperSmashBros.fighter,
        email: Faker::Internet.email,
        password_digest: Faker::Company.bs
    )
end
10.times do
    Post.create(
		date: Faker::Date.between(from: '2020-09-01', to: '2020-09-29'),
		entry: Faker::Hipster.paragraph(sentence_count: 2),
		hidden: false,
		user_id: Faker::Number.between(from: 1, to: 10)
    )
end
10.times do
    Game.create(
		api_ref: "game name",
		entry: Faker::Hipster.paragraph(sentence_count: 2),
		post_id: Faker::Number.between(from: 1, to: 10)
    )
end

puts "Seeded database"