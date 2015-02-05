# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!([
  {id: 1, name: "FIFA 14", price: 50,description: "A premium game to play football with lates teams available on Xbox,Playstation and PC"},
  {id: 2, name: "GTA V", price: 60,description: "Worlds largest selling game with an award winning story line"},
  {id: 3, name: "Assasins Creed", price: 70,description: "Be a part of French Revolution available on Xbox,Playstation and PC"},
  {id: 4, name: "Command and Conquer", price: 30,description: "Worlds best military strategy game"},
  {id: 5, name: "Need for Speed", price: 74.95,description: "Quench your speed thirst on Xbox,Playstation and PC"}
])
