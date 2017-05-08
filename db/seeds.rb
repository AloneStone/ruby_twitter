# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: 1, name: 'Becky',
            img_url: 'http://i.pravatar.cc/300?img=10',
            bio:"This is a amazing social network ! "
)
User.create(id: 2, name: 'Wilson Wilson',
            img_url: 'http://celebritypictures.wiki/thumbs/2253821/2253821_6.jpeg',
            bio: "I'm invisible.")

User.create(id: 3, name: 'Jessica Hyde',
            img_url: 'http://celebritypictures.wiki/thumbs/1659612/1659612_2.jpeg',
            bio: "Hello, I'm Jessica Hyde")

User.create(id: 4, name: 'Lee',
            img_url: 'http://celebritypictures.wiki/thumbs/0713961/0713961_1.jpeg',
            bio: "Where is Jessica Hyde ?")

User.create(id: 5, name: 'Frank Underwood',
            img_url: 'http://celebritypictures.wiki/thumbs/0000228/0000228_1.jpeg',
            bio: "Friends make the worst enemies.")

User.create(id: 6, name: 'Joe MacMillan',
            img_url: 'http://celebritypictures.wiki/thumbs/6904982/6904982_4.jpeg',
            bio: "How did we all get here today?")


User.create(id: 7, name: 'Lucas Hood',
            img_url: 'http://celebritypictures.wiki/thumbs/1102278/1102278_24.jpeg',
            bio: "I'm the sherif")

User.create(id: 8, name: 'Elliot Alderson',
            img_url: 'http://celebritypictures.wiki/thumbs/1785339/1785339_4.jpeg',
            cover_picture: 'https://www.place4geek.com/blog/wp-content/uploads/2011/08/Geek-Code.jpg',
            bio: "I see a people")

User.create(id: 9, name: 'M.Robot',
            img_url: 'http://celebritypictures.wiki/thumbs/0000225/0000225_19.jpeg',
                bio: "We live in a Kingdom of Bullsh**"
)
User.create(id: 10, name: 'Walter White',
            img_url: 'http://celebritypictures.wiki/thumbs/0186505/0186505_482.jpeg',
            cover_picture: 'http://animal-dream.com/data_images/money/money3.jpg',
                bio: "Say my name !"
)
User.create(id: 11, name: 'Jesse Pinkman',
            img_url: 'http://celebritypictures.wiki/thumbs/0666739/0666739_302.jpeg',
                bio: "B****"
)
User.create(id: 12, name: 'Pablo Escobar',
            img_url: 'http://celebritypictures.wiki/thumbs/0609944/0609944_5.jpeg',
            cover_picture: 'http://animal-dream.com/data_images/money/money3.jpg',
                bio: "Plata o plumo ?"
)

Follow.create(follower_id: 1, followed_id: 3)
Follow.create(follower_id: 1, followed_id: 2)
Follow.create(follower_id: 1, followed_id: 7)
Follow.create(follower_id: 1, followed_id: 10)
Follow.create(follower_id: 2, followed_id: 5)
Follow.create(follower_id: 2, followed_id: 3)
Follow.create(follower_id: 3, followed_id: 4)
Follow.create(follower_id: 3, followed_id: 7)
Follow.create(follower_id: 3, followed_id: 8)
Follow.create(follower_id: 4, followed_id: 1)
Follow.create(follower_id: 4, followed_id: 3)
Follow.create(follower_id: 4, followed_id: 7)
Follow.create(follower_id: 4, followed_id: 5)
Follow.create(follower_id: 4, followed_id: 2)
Follow.create(follower_id: 5, followed_id: 2)
Follow.create(follower_id: 5, followed_id: 4)
Follow.create(follower_id: 5, followed_id: 8)
Follow.create(follower_id: 5, followed_id: 12)
Follow.create(follower_id: 6, followed_id: 1)
Follow.create(follower_id: 6, followed_id: 8)
Follow.create(follower_id: 6, followed_id: 3)
Follow.create(follower_id: 6, followed_id: 5)
Follow.create(follower_id: 6, followed_id: 8)
Follow.create(follower_id: 6, followed_id: 11)
Follow.create(follower_id: 7, followed_id: 8)
Follow.create(follower_id: 7, followed_id: 1)
Follow.create(follower_id: 7, followed_id: 6)
Follow.create(follower_id: 7, followed_id: 10)
Follow.create(follower_id: 8, followed_id: 3)
Follow.create(follower_id: 8, followed_id: 1)
Follow.create(follower_id: 8, followed_id: 5)
Follow.create(follower_id: 8, followed_id: 11)
Follow.create(follower_id: 9, followed_id: 2)
Follow.create(follower_id: 9, followed_id: 6)
Follow.create(follower_id: 9, followed_id: 8)
Follow.create(follower_id: 9, followed_id: 11)
Follow.create(follower_id: 10, followed_id: 11)
Follow.create(follower_id: 10, followed_id: 2)
Follow.create(follower_id: 10, followed_id: 1)
Follow.create(follower_id: 10, followed_id: 12)
Follow.create(follower_id: 11, followed_id: 14)
Follow.create(follower_id: 11, followed_id: 5)
Follow.create(follower_id: 11, followed_id: 6)
Follow.create(follower_id: 11, followed_id: 7)
Follow.create(follower_id: 12, followed_id: 14)
Follow.create(follower_id: 12, followed_id: 5)
Follow.create(follower_id: 12, followed_id: 6)
Follow.create(follower_id: 12, followed_id: 7)


Tweet.create(user_id: 1, content: "How could you do that? How could you shoot at people you love?")
Tweet.create(user_id: 2, content: "Your problem is, you think we can all just get along, co-operate... When the fuck have we ever done that?")
Tweet.create(user_id: 3, content: "I'm Jessica Hyde")
Tweet.create(user_id: 4, content: "Where is Jessica Hyde ?")
Tweet.create(user_id: 5, content: "There are two kinds of pain. The sort of pain that makes you strong, or useless pain. The sort of pain that’s only suffering. I have no patience for useless things.")
Tweet.create(user_id: 6,
            content: "It was difficult for a very long time, but I'm doing so much better since I reconnected with your wife.")

Tweet.create(user_id: 5, content: "Power is a lot like real estate. It’s all about location, location, location. The closer you are to the source, the higher your property value.")
Tweet.create(user_id: 7, content: "I'm the new sherif")
Tweet.create(user_id: 8, content: "They all think it's me. They all think I'm the ringleader. The one in charge. And I have no idea what it is.")
Tweet.create(user_id: 9, content: "Hello, friend. Hello, friend? That's lame. Maybe I should give you a name. But that's a slippery slope. You're only in my head. We have to remember that.")
Tweet.create(user_id: 10, content: "I'm the danger")
Tweet.create(user_id: 11, content:"You're my free pass ... b****")
Tweet.create(user_id: 11, content:"If you want to kill Mr. White, you're gonna have to kill me, too.")

Tweet.create(user_id: 5, content:"Democracy is so overrated.")

