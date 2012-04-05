# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Game.delete_all
Role.delete_all
Rating.delete_all

roles = Role.create([
  { name: "Member" },
  { name: "Admin"  }
])

users = User.create([
  { 
    username: 'cyouden', 
    password: BCrypt::Password.create('secret'),
    firstname: 'Christopher',
    lastname: 'Youden',
    email: 'cyouden@mines.edu',
    role_id: Role.where(:name => "Admin").first.id
  },
  {
    username: 'fbar', 
    password: BCrypt::Password.create('secret'),
    firstname: 'Foo',
    lastname: 'Bar',
    email: 'foobar@barfoo.internet',
    role_id: Role.where(:name => "Member").first.id
  }
])
    
Rating.create([
  { name: "Unrated" }
])
    
games = Game.create([
  {
    title: "That One Game With The Pew Pew",
    rating: Rating.where(:name => "Unrated").first.id, 
    user_id: users.first.id
  }
])

