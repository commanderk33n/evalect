# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Example Admin",
             email: "admin@example.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             prof: false)
User.create!(name:  "Example Prof",
             email: "prof@example.com",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: false,
             prof: true)

15.times do |n|
  name  = Faker::Name.name
  email = "example-student#{n+1}@example.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end