# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

social = Category.create(name: "Social")
digital = Category.create(name: "Digital")
partnerships = Category.create(name: "Partnerships")
onAir = Category.create(name: "On-Air")
onGround = Category.create(name: "On-Ground")

Idea.create(category: social, name: "The Social Lounge", content: "A hub for custom social content throughout the event which can include polls, quizzes, trivia.", author: "Andy", votes: (1..10).to_a.sample)
Idea.create(category: digital, name: "Interactive Digital Map", content: "Aggreagate all custom content and provide fans with easter eggs to unlock prizes.", author: "Sally", votes: (1..10).to_a.sample)
Idea.create(category: partnerships, name: "Buzzfeed: A Taste of Comic-Con", content: "Partner with Buzzfeed to create Tasty-like short-form content focusing on cosplay how-tos. ", author: "Winston", votes: (1..10).to_a.sample)
Idea.create(category: onAir, name: "The Road to Comic-Con", content: "Custom on-air spots with influencers highlighting various genre-relevant locations and driving viewers online to see more.", author: "Alice", votes: (1..10).to_a.sample)
Idea.create(category: onGround, name: "Cosplay Red Carpet", content: "On-ground activation with special insider look into how celebrities are cosplaying.", author: "Bob", votes: (1..10).to_a.sample)
