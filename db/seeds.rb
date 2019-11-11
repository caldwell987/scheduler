# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Group.destroy_all
Member.destroy_all
Schedule.destroy_all
    
u1 = User.create(email: 'david@gmail.com', password: '123456', password_confirmation: '123456')
u2 = User.create(email: 'damini@gmail.com', password: '1234567', password_confirmation: '1234567')
u3 = User.create(email: 'max@gmail.com', password: '12345678', password_confirmation: '12345678')
u4 = User.create(email: 'luke@gmail.com', password: '123456789', password_confirmation: '123456789')

g1 = Group.create(name: 'group 1', user_id: u1.id)
g2 = Group.create(name: 'group 2', user_id: u2.id)
g3 = Group.create(name: 'group 3', user_id: u3.id)
g4 = Group.create(name: 'group 4', user_id: u4.id)


m1 = Member.create(user_id: u1.id, group_id: g1.id)
m2 = Member.create(user_id: u2.id, group_id: g1.id)
m3 = Member.create(user_id: u3.id, group_id: g1.id)
m4 = Member.create(user_id: u4.id, group_id: g1.id)


s1 = Schedule.create(event_date: '11/1/2019', time: '1:00 PM', location: 'over there', event: 'git drunk', group_id: g1.id)
s2 = Schedule.create(event_date: '11/2/2019', time: '2:00 PM', location: 'over here', event: 'git really drunk', group_id: g2.id)
s3 = Schedule.create(event_date: '11/3/2019', time: '3:00 PM', location: 'over the wall', event: 'git really really drunk', group_id: g3.id)
s4 = Schedule.create(event_date: '11/4/2019', time: '4:00 PM', location: 'under the wall', event: 'git sober', group_id: g4.id)


# t.string :date
#       t.string :time
#       t.string :location
#       t.string :event
#       t.integer :group_id