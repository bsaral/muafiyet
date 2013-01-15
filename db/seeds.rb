# encoding: utf-8


User.create(username: "bsaral", password: "1234", password_confirmation: "1234", role: "student")

User.create(username: "student", password: "1234", password_confirmation: "1234", role: "student")

User.create(username: "hayri", password: "123", password_confirmation: "123", role: "student")

User.create(username: "hayriye", password: "1234", password_confirmation: "1234", role: "student")

User.create(username: "admin", password: "1234", password_confirmation: "1234", role: "admin")

Classname.create(schoolname: "müh.fak", classname: "D004", floor: "0", examdate: "10.10.2013", desk: "1", totaldesk: 25)

Classname.create(schoolname: "fen.fak", classname: "D005", floor: "1", examdate: "10.10.2013", desk: "10", totaldesk: 40)

Classname.create(schoolname: "iktisat.fak", classname: "D006", floor: "2", examdate: "10.10.2013", desk: "8", totaldesk: 30)

Classname.create(schoolname: "tıp.fak", classname: "D007", floor: "3", examdate: "10.10.2013", desk: "18", totaldesk: 50)

Classname.create(schoolname: "ziraat.fak", classname: "D008", floor: "4", examdate: "10.10.2013", desk: "24", totaldesk: 30)


