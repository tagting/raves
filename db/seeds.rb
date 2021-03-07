User.create(name: "Nick", username: "nickeats", email: "nickeats@website.com")
User.create(name: "Joon", username: "joonkim", email: "joonkim1112@gmail.com")
User.create(name: "Kate", username: "katie_foodie", email: "kate_smith@yahoo.com")
User.create(name: "Alice", username: "ally00n", email: "alicemariethomas@site.edu")

Review.create(title: "Amazing Food", content: "Amazing Food and Drinks!", rating: 5, timestamp: DateTime.now, user_id: 1, restaurant_id: 1)
Review.create(title: "Best Spot In Town", content: "Hands down a great place to go for a good lunch", rating: 5, user_id: 2, restaurant_id: 2)
Review.create(title: "Sandwiches For Your Stomach", content: "A nice place to grab a cheap lunch", rating: 4, user_id: 3, restaurant_id: 2)
Review.create(title: "Weekend Brunch", content: "This hole-in-the-wall restaurant serves a suprisingly good brunch on Sundays.", rating: 3, user_id: 2, restaurant_id: 3)
Review.create(title: "Weekend Specials ", content: "Two sides and a main dish for just ten dollars. Drinks are an extra two dollars.", rating: 3, user_id: 4, restaurant_id: 5)

10.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address)
end