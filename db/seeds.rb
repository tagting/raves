User.create(name: "Nick", username: "nickeats", email: "nickeats@website.com")
User.create(name: "Joon", username: "joonkim", email: "joonkim1112@gmail.com")
User.create(name: "Kate", username: "katie_foodie", email: "kate_smith@yahoo.com")
User.create(name: "Alice", username: "ally00n", email: "alicemariethomas@site.edu")

Review.create(title: "Amazing Food", content: "Amazing Food and Drinks!", rating: 5, user_id: 1, restaurant_id: 1)

10.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address
    )
end