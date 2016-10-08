# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ngo_profile_1 = NgoProfile.create(title: 'Architecture')
ngo_profile_2 = NgoProfile.create(title: 'Food')
ngo_profile_3 = NgoProfile.create(title: 'Civil Rights')

user_profile_1 = UserProfile.create(name: "Emily")
user_profile_2 = UserProfile.create(name: "Olson")
user_profile_3 = UserProfile.create(name: "Sonya")

Request.create(user_profile_id: user_profile_3.id, ngo_profile_id: ngo_profile_1.id, title: "#{user_profile_1.name} X #{ngo_profile_1.title}")
