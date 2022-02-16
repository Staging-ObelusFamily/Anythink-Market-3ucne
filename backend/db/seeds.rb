# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

# using for loop with the range
for i in 1..100 do
 newUser = User.create!(
    email: "user#{i}@gmail.com",
    password: "Shnilik2912",
    username: "CoolNickName#{i}",
    created_at: DateTime.now(),
    updated_at: DateTime.now()
  )

  newItem = Item.create(
    title: "item title #{i}",
    slug: "item_#{newUser.id}",
    description: "description",
    user_id: newUser.id,
    created_at: DateTime.now(),
    updated_at: DateTime.now()
  )

   Comment.create(
    body: "comment",
    user_id: newUser.id,
    item_id: newItem.id,
    created_at: DateTime.now(),
    updated_at: DateTime.now()
   )
end