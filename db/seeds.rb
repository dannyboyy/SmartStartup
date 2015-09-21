# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Category.delete_all
Resource.delete_all

# Create Categories
Category.create!(
	name: '域名'
)
Category.create!(
	name: '托管'
)
Category.create!(
	name: '设计'
)
Category.create!(
	name: '法律'
)
Category.create!(
	name: 'HR'
)
Category.create!(
	name: '市场'
)
categories = Category.all

# Create Resources
6.times do
	Resource.create!(
		category: categories.sample,
		name: Faker::Company.name,
		tagline: Faker::Company.catch_phrase,
		description: Faker::Lorem.paragraph,
		website: 'www.startsmart.com'
	)
end

puts "Seed finished"
puts "#{Resource.count} Resources created"