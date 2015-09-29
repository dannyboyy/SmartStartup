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
	name: '云服务'
)
Category.create!(
	name: '问卷调查'
)
Category.create!(
	name: '社交管理'
)
Category.create!(
	name: '团队协作'
)
Category.create!(
	name: '人力资源/招聘'
)
categories = Category.all

# Create Resources
# 6.times do
# 	Resource.create!(
# 		category: categories.sample,
# 		name: Faker::Company.name,
# 		tagline: Faker::Company.catch_phrase,
# 		description: Faker::Lorem.paragraph,
# 		website: 'www.startsmart.com'
# 	)
# end

puts "Seed finished"
puts "#{Resource.count} Resources created"