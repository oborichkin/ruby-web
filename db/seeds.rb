user_list = [
    [ "pavel", "oborin.p@gmail.com" ],
    [ "admin", "admin@test.org" ],
    [ "user", "user@test.org" ],
    [ "guest", "guest@test.org" ]
]

theme_list = [
    "uncategorized",
    "Best Computer Generated Album Cover",
    "Best Computer Generated Painting"
]

image_list = [
    [ "1", "cover-1.png", 2 ],
    [ "2", "cover-2.png", 2 ],
    [ "3", "cover-3.png", 2 ],
    [ "4", "cover-4.png", 2 ],
    [ "5", "cover-5.png", 2 ],
    [ "1", "image-1.png", 3 ],
    [ "2", "image-2.png", 3 ],
    [ "3", "image-3.png", 3 ],
    [ "4", "image-4.png", 3 ],
    [ "5", "image-5.png", 3 ]
]

User.delete_all
User.reset_pk_sequence
user_list.each do |name, email|
    User.create( name: name, email: email )
end

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