# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
    { 
      username: 'cyouden', 
      password: BCrypt::Password.create('secret'),
      firstname: 'Christopher',
      lastname: 'Youden',
      email: 'cyouden@mines.edu' 
    }])
    
games = Game.create([
    {
      title: "That One Game Wiht The Pew Pew",
      rating: "Unrated" 
    }])