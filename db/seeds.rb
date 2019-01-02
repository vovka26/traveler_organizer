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

Category.find_or_create_by(name: "Outdoors")
Category.find_or_create_by(name: "Family Friendly")
Category.find_or_create_by(name: "Indoor")
Category.find_or_create_by(name: "Beach")
Category.find_or_create_by(name: "Tours")

Place.find_or_create_by(city: "New York City", image_url: "https://amp.businessinsider.com/images/59567b26a3630f950f8b6295-750-375.jpg")
Place.find_or_create_by(city: "Sydney", image_url: "https://cdn.pixabay.com/photo/2016/01/30/05/11/sydney-opera-house-1169155__340.jpg")
Place.find_or_create_by(city: "London", image_url: "http://image.noelshack.com/fichiers/2016/22/1465150340-london-dest-16531610x.jpg")
Place.find_or_create_by(city: "Hong Kong", image_url: "https://travelpassionate.com/wp-content/uploads/2018/10/Giant-Buddha-Po-Lin-Monastery-at-Lantau-Island-in-Hong-Kong-with-blue-sky-min.jpg")
Place.find_or_create_by(city: "Paris", image_url: "http://www.world-city-photos.org/Paris/Eiffel_Tower/Eiffel_Tower_lights.jpg")
Place.find_or_create_by(city: "Fiji", image_url: "http://www.world-city-photos.org/Paris/Eiffel_Tower/Eiffel_Tower_lights.jpg")


Activity.find_or_create_by(name: "Scuba Diving", img_url: "http://www.freakingnews.com/Pictures/5/Shark-Diving.jpg")
Activity.find_or_create_by(name: "Hiking", img_url: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjFh6qcksHfAhXRTd8KHffGBv4QjRx6BAgBEAU&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F173388654380814346%2F&psig=AOvVaw1kTxIxWdgx4zfUBh7EOOSd&ust=1546038957190421")
Activity.find_or_create_by(name: "Shopping", img_url: "https://i.pinimg.com/236x/45/9d/7d/459d7d16a5d583d8ff4170a71e94effa--shopping-meme-speech-therapy.jpg")
