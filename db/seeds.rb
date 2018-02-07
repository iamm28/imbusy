# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(full_name: "Alison Mackay", email: "alimack7@gmail.com", password: '123', password_confirmation: '123')
User.create(full_name: "Lindsay Davis", email: "ldavis@gmail.com", password: '123', password_confirmation: '123')

10.times do
  Location.create(
    name: Faker::HarryPotter.location,
    address: Faker::Address.street_address,
    website: Faker::Internet.url,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end

20.times do
  Event.create(
    title: Faker::Friends.location,
    date_time: Faker::Date.forward(30),
    event_type: ["Work", "Social","Family"].sample,
    location_id: Random.rand(1...10)
  )
end

5.times do
  Invite.create(
    event_id: Random.rand(1...20),
    user_id: Random.rand(1...2)
  )
end
