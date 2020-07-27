# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
User.destroy_all
Tip.destroy_all

categories = [
  { title: 'Ruby', color: '#CC0000', imageUrl: '' },
  { title: 'CSS', color: '#2965F1', imageUrl: '' },
  { title: 'HTML', color: '#E44D26', imageUrl: '' },
  { title: 'javaScript', color: '#F0DB4F', imageUrl: '' },
  { title: 'Ruby on Rails', color: '#CC0000', imageUrl: '' },
  { title: 'React', color: '#61DBFB', imageUrl: '' }

]

user = User.create(email:'test1@test.com', password:'0000', username:'test1', bio:"I'm boring of be always a test case" )


categories.each do |obj|
   Category.create(obj)
end

rails = Category.find_by(title: 'Ruby on Rails')

rails.tips.create(title:'test tip', description: 'first tip test', user: user, code_snippet: "rails new <YOURAPPNAME> --api --database=postgres")

tip = Tip.first

Vote.create(user:user, tip: tip)
