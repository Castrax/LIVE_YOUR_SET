# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MovieSet.destroy_all
User.destroy_all


u1 = User.create(first_name: "Nicolas", last_name: "Bedos", email: "nicolas@bedos.com", password: "testtest")

ms1 = MovieSet.create(title: "Authentic prison cell in the heart of Litchfield Correctional Institution", description: "Authentic prison cell in the heart of Litchfield Correctional Institution", media_name: "Orange is the new black", address: "Litchfield Correctional Institution", price_per_day: 1, user_id: u1.id )
