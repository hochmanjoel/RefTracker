# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

referrals = [
  {:email => 'person1@gmail.com', :counter => '0'},
  {:email => 'person2@gmail.com', :counter => '2'},
  {:email => 'person3@gmail.com', :counter => '23'},
  {:email => 'person4@gmail.com', :counter => '5'},
  {:email => 'person5@gmail.com', :counter => '67'},
  {:email => 'person6@gmail.com', :counter => '7'},
  {:email => 'person7@gmail.com', :counter => '8'},
  {:email => 'person8@gmail.com', :counter => '23'},
  {:email => 'person9@gmail.com', :counter => '1'},
  {:email => 'person10@gmail.com', :counter => '5'},
  {:email => 'person11@gmail.com', :counter => '7'},
  {:email => 'person12@gmail.com', :counter => '8'},
  {:email => 'person13@gmail.com', :counter => '9'},
  {:email => 'person14@gmail.com', :counter => '12'},
  {:email => 'person15@gmail.com', :counter => '42'},
  {:email => 'person16@gmail.com', :counter => '2'},
  {:email => 'person17@gmail.com', :counter => '16'},
  {:email => 'person18@gmail.com', :counter => '12'},
  {:email => 'person19@gmail.com', :counter => '17'},
  {:email => 'person20@gmail.com', :counter => '3'},
]

referrals.each do |ref|
  Referral.create!(ref)
end
