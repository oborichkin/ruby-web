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
    [ "5", "cover-5.jpeg", 2 ],
    [ "6", "cover-6.jpeg", 2 ],
    [ "7", "cover-7.jpeg", 2 ],
    [ "8", "cover-8.jpeg", 2 ],
    [ "9", "cover-9.jpeg", 2 ],
    [ "1", "image-1.png", 3 ],
    [ "2", "image-2.png", 3 ],
    [ "3", "image-3.png", 3 ],
    [ "4", "image-4.png", 3 ],
    [ "5", "image-5.png", 3 ],
    [ "6", "image-6.png", 3 ],
    [ "7", "image-7.jpeg", 3 ],
    [ "8", "image-8.jpeg", 3 ],
    [ "9", "image-9.jpeg", 3 ]
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