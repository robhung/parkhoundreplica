# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@password = "password"

User.create(email: "rob@cfa.com", password: @password, password_confirmation: @password, first_name: "Rob", last_name: "Hung", phone: "1"*10, location: "Sydney, NSW", birthday: "1990-08-28" )

User.create(email: "trent@cfa.com", password: @password, password_confirmation: @password, first_name: "Trent", last_name: "Shields", phone: "2"*10, location: "Ultimo, NSW", birthday: "1990-09-13" )

User.create(email: "pete@cfa.com", password: @password, password_confirmation: @password, first_name: "Pete", last_name: "Argent", phone: "3"*10, location: "Glebe, NSW", birthday: "1980-10-20" )

User.create(email: "alex@cfa.com", password: @password, password_confirmation: @password, first_name: "Alex", last_name: "Chuvand", phone: "4"*10, location: "Bankstown, NSW", birthday: "1993-02-01" )

User.create(email: "chi@cfa.com", password: @password, password_confirmation: @password, first_name: "Chi", last_name: "Bui", phone: "5"*10, location: "Waterloo, NSW", birthday: "1985-02-22" )

User.create(email: "nandini@cfa.com", password: @password, password_confirmation: @password, first_name: "Nandini", last_name: "Nayak", phone: "6"*10, location: "Surry Hills, NSW", birthday: "1992-05-21" )
