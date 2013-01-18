# encoding: utf-8


User.create(username: "bsaral", password: "1234", password_confirmation: "1234", role: "student", okulno: "12060801")

User.create(username: "student", password: "1234", password_confirmation: "1234", role: "student", okulno: "12060821")

User.create(username: "hayri", password: "123", password_confirmation: "123", role: "student", okulno: "12060831")

User.create(username: "hayriye", password: "1234", password_confirmation: "1234", role: "student", okulno: "12060841")

User.create(username: "admin", password: "1234", password_confirmation: "1234", role: "admin")

Classname.create(schoolname: "Mühendislik Fakültesi", classname: "A005", floor: "5", examdate: "10.10.2013", desk: "1", totaldesk: 2)

Classname.create(schoolname: "Fen Fakültesi", classname: "D005", floor: "1", examdate: "10.10.2013", desk: "10", totaldesk: 1)

Classname.create(schoolname: "İktisat Fakültesi", classname: "D006", floor: "2", examdate: "10.10.2013", desk: "8", totaldesk: 1)

Classname.create(schoolname: "Tıp Fakültesi", classname: "D007", floor: "3", examdate: "10.10.2013", desk: "18", totaldesk: 1)

Classname.create(schoolname: "Ziraat Fakültesi", classname: "A008", floor: "4", examdate: "10.10.2013", desk: "24", totaldesk: 2)


