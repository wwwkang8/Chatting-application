# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Evgeny', password: 'password')
User.create(username: 'Jonsnow', password: 'password')
User.create(username: 'Arya', password: 'password')
User.create(username: 'Froda', password: 'password')
User.create(username: 'Gandalf', password: 'password')

Message.create(body: 'Hello Jeongho', user_id: 1)
Message.create(body: 'You will be the best developer in DRAMA', user_id: 2)
Message.create(body: 'I will do my best Jeongho', user_id: 1)
Message.create(body: 'Always cheer up', user_id: 3)
Message.create(body: 'You can do it', user_id: 4)
Message.create(body: 'Like how your senior', user_id: 5)
Message.create(body: 'Hello super developer', user_id: 1)

