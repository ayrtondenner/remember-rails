# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(0..10).each do |i|
    friend_in_use = Friend.new(name: Faker::Name.name,
        address: "#{Faker::Address.street_name}, #{Faker::Address.city}, #{Faker::Address.country}",
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number)
    puts("Cadastrando o usuário #{i} - #{friend_in_use.name}")
    Friend.create(name: friend_in_use.name, address: friend_in_use.address, email: friend_in_use.email, phone: friend_in_use.phone)
end