# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vote.destroy_all
Tip.destroy_all
Category.destroy_all
User.destroy_all

categories = [
  { title: 'Ruby', color: '#CC0000', imageUrl: '' },
  { title: 'CSS', color: '#2965F1', imageUrl: '' },
  { title: 'HTML', color: '#E44D26', imageUrl: '' },
  { title: 'javaScript', color: '#F0DB4F', imageUrl: '' },
  { title: 'Ruby on Rails', color: '#CC0000', imageUrl: '' },
  { title: 'React', color: '#61DBFB', imageUrl: '' }
]

users = []

10.times do |n|
  users << User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    username: Faker::Internet.username(specifier: 5..10),
    bio: "I'm boring of be always a test case number #{n}"
  )
end

categories.each do |obj|
  cat = Category.create(obj)
  20.times do
    cat.tips.create(
      title: Faker::Lorem.sentence(word_count: 3, supplemental: true),
      description: Faker::Lorem.paragraph_by_chars,
      user: users.sample,
      code_snippet: Faker::Lorem.paragraph_by_chars(number: 30),
      more_info: Faker::Internet.url
    )
  end
end

tips = Tip.all
250.times do
  Vote.create(user: users.sample, tip: tips.sample)
end
