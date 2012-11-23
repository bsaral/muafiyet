# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create( username: "bsaral", password: "1234", password_confirmation: "1234",role: "student", userlogin: nil)

User.create( username: "hayri", password: "123", password_confirmation: "123",role: "student", userlogin: nil)

User.create( username: "student", password: "1234", password_confirmation: "1234",role: "student", userlogin: nil)

User.create( username: "hayriye", password: "1234", password_confirmation: "1234",role: "student", userlogin: nil)

User.create( username: "admin", password: "1234", password_confirmation: "1234",role: "admin", userlogin: nil)



