# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

drake = User.create(email: "drake@email.com", name: "Aubrey Drake Graham")
posty = User.create(email: "posty@email.com", name: "Post Malone")
jb = User.create(email: "jb@email.com", name: "Justin Bieber")

e1 = Event.create(name: "Justin Bieber's Wedding", host_id: jb.id)

EventUser.create(event_id: e1.id, user_id: drake.id)
EventUser.create(event_id: e1.id, user_id: posty.id)