# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


<<<<<<< HEAD
<<<<<<< HEAD
User.create(:username => "bsaral", :password => "1234", :password_confirmation => "1234",:role => "student")
=======
User.create( username: "bsaral", password: "1234", password_confirmation: "1234",role: "student")
=======
User.create( username: "bsaral", password: "1234", password_confirmation: "1234",role: "student", userlogin: nil)
>>>>>>> da139b698b36f297658da8bcc08bf0db756d0a4f

User.create( username: "student", password: "1234", password_confirmation: "1234",role: "student", userlogin: nil)

User.create( username: "hayriye", password: "1234", password_confirmation: "1234",role: "student", userlogin: nil)

User.create( username: "admin", password: "1234", password_confirmation: "1234",role: "admin", userlogin: nil)


>>>>>>> ccc9dd137e36e4a3d59714e530e7be707223c04d

