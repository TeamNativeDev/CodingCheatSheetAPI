# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
  { title: 'Ruby', color: '#CC0000', imageUrl: '' },
  { title: 'CSS', color: '#2965F1', imageUrl: '' },
  { title: 'HTML', color: '#E44D26', imageUrl: '' },
  { title: 'javaScript', color: '#F0DB4F', imageUrl: '' },
  { title: 'Ruby on  Rails', color: '#CC0000', imageUrl: '' },
  { title: 'React', color: '#61DBFB', imageUrl: '' }

]

Category.destroy_all

categories.each do |obj|
  Category.create(obj)
end
