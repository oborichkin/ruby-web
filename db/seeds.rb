theme_list = [
    "uncategorized",
    "Best Computer Generated Album Cover",
    "Best Computer Generated Painting"
]

image_list = [
    [ Faker::FunnyName.name, "cover-1.png", 2 ],
    [ Faker::FunnyName.name, "cover-2.png", 2 ],
    [ Faker::FunnyName.name, "cover-3.png", 2 ],
    [ Faker::FunnyName.name, "cover-4.png", 2 ],
    [ Faker::FunnyName.name, "cover-5.jpeg", 2 ],
    [ Faker::FunnyName.name, "cover-6.jpeg", 2 ],
    [ Faker::FunnyName.name, "cover-7.jpeg", 2 ],
    [ Faker::FunnyName.name, "cover-8.jpeg", 2 ],
    [ Faker::FunnyName.name, "cover-9.jpeg", 2 ],
    [ Faker::FunnyName.name, "image-1.png", 3 ],
    [ Faker::FunnyName.name, "image-2.png", 3 ],
    [ Faker::FunnyName.name, "image-3.png", 3 ],
    [ Faker::FunnyName.name, "image-4.png", 3 ],
    [ Faker::FunnyName.name, "image-5.png", 3 ],
    [ Faker::FunnyName.name, "image-6.png", 3 ],
    [ Faker::FunnyName.name, "image-7.jpeg", 3 ],
    [ Faker::FunnyName.name, "image-8.jpeg", 3 ],
    [ Faker::FunnyName.name, "image-9.jpeg", 3 ]
]

User.delete_all
User.reset_pk_sequence

Theme.delete_all
Theme.reset_pk_sequence
theme_list.each do |name|
    Theme.create( name: name )
end

Image.delete_all
Image.reset_pk_sequence
image_list.each do |name, file, theme_id|
    Image.create( name: name, file: file, theme_id: theme_id )
end

Comment.delete_all
Comment.reset_pk_sequence

Like.delete_all
Like.reset_pk_sequence
