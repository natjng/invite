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

e1 = Event.create(name: "Justin Bieber's Wedding", date: "2019-09-13", location: "TBD", host_id: jb.id)
e2 = Event.create(name: "Camping Trip", date: "2020-03-10", description: "Yearly camping trip.", host_id: drake.id)
e3 = Event.create(name: "Wine Tasting", date: "2020-06-16", location: "Napa Valley, CA", host_id: jb.id)
e4 = Event.create(name: "Hiking", date: "2020-04-28", location: "Laguna Beach Cliff Hike", description: "Let's go hiking with a beach view!", host_id: posty.id)
e5 = Event.create(name: "Pottery Class", date: "2020-08-14", location: "Long Beach, CA", host_id: jb.id)

EventUser.create(event_id: e1.id, user_id: drake.id)
EventUser.create(event_id: e1.id, user_id: posty.id)