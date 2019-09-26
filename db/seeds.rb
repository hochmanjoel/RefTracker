# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeding the DB
default_people = [{:email => 'a@a.com', :counter => 3},
	{:email => 'ab@a.com', :counter => 33},
	{ :email => 'ac@a.com', :counter => 34}
]

default_people.each do |person|
	MainDatum.create!(person)
end