# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Activity.destroy_all
Place.destroy_all
Category.destroy_all

Category.create(name: "Outdoors")
Category.create(name: "Family Friendly")
Category.create(name: "Indoor")
Category.create(name: "Beach")
Category.create(name: "Tours")

Place.create(city: "New York City")
Place.create(city: "Sydney")
Place.create(city: "London")
Place.create(city: "Hong Kong")
Place.create(city: "Paris")


Activity.create(name: "Scuba Diving", img_url: "http://www.freakingnews.com/Pictures/5/Shark-Diving.jpg")
Activity.create(name: "Hiking", img_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjFh6qcksHfAhXRTd8KHffGBv4QjRx6BAgBEAU&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F173388654380814346%2F&psig=AOvVaw1kTxIxWdgx4zfUBh7EOOSd&ust=1546038957190421")
Activity.create(name: "Shopping", img_url: "https://i.pinimg.com/236x/45/9d/7d/459d7d16a5d583d8ff4170a71e94effa--shopping-meme-speech-therapy.jpg")
