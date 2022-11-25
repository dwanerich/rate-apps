# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

platform = Platform.create([
  {
    name: "Twitter",
    img_url: "https://logos-world.net/wp-content/uploads/2020/04/Twitter-Emblem.png"
  },
  {
    name: "TikTok",
    img_url: "https://logos-world.net/wp-content/uploads/2020/04/TikTok-Logo-700x394.png"
  },
  {
    name: "YouTube",
    img_url: "https://logos-world.net/wp-content/uploads/2020/04/YouTube-Logo-700x394.png"
  },
  {
    name: "Snapchat",
    img_url: "https://logos-world.net/wp-content/uploads/2020/04/Snapchat-Logo-700x394.png"
  }
])

rating = Rating.create([
  {
    title: "Is it over?",
    description: "Did he mess it up or clean it up?",
    score: 5,
    platform: platform.first
  },
  {
    title: "Freedom of Speech",
    description: "I don't know what to think",
    score: 1,
    platform: platform.first
  }
])
