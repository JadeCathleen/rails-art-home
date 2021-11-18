# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."
# Comment.destroy_all
# Step.destroy_all
# Apply.destroy_all
Artpiece.destroy_all
User.destroy_all

# USER
puts "Creating user..."

alex = User.create({ email: "alexandre.vrla@gmail.com", password: "123456", password_confirmation: "123456" })
ben = User.create({ email: "ben@gmail.com", password: "123456", password_confirmation: "123456" })
# file = URI.open('https://res.cloudinary.com/bsm/image/upload/v1624730817/benoit.jpg')
# nicolas.photo_avatar.attach(io: file, filename: 'benoit.jpg', content_type: 'image/jpg')

puts "User finished!"

# ARTPIECE

# puts "Creating artpieces..."
# the_scream = { name: "The Scream", category:"painting", artist: "Edvard Munch", description: "Oil, tempera, pastel and crayon on cardboard", price_per_day: 10000 }
# the_cellist = { name: "The Cellist", category:"photo", artist: "Robert Doisneau", description: "With its compositional beauty and humor, this photo represents the brilliant collaboration between photographer Robert Doisneau (14 April 1912 – 1 April 1994) and cellist Maurice Baquet (26 May 1911 – 8 July 2005).", price_per_day: 2300 }
# le_penseur = { name: "Le Penseur", category:"scultpture", artist: "Auguste Rodin", description: "Le Penseur est l'une des plus célèbres sculptures en bronze d'Auguste Rodin. Elle représente un homme en train de méditer, semblant devoir faire face à un profond dilemme.", price_per_day: 450000 }
# vitruvian_man = { name: "Vitruvian Man", category:"drawing", artist: "Leonardo da Vinci", description: "the quintessential Renaissance man whose unending curiosity inspired him to study art, engineering, and nature", price_per_day: 50000 }
# famous = { name: "Famous", category:"painting", artist: "Jean-Michel Basquiat", description: "La cote de l'artiste a crû de manière régulière. En mai 2016, une de ses toiles, intitulée Untitled, décroche un nouveau record en étant adjugée 57,2 millions de dollars (50,2 millions d’euros) lors d’enchères organisées par Christie’s à New York", price_per_day: 43660 }


# [ the_scream, the_cellist, le_penseur, vitruvian_man, famous ].each do |attributes|
#   artpiece = Artpiece.create!(attributes)
#   photo = URI.open('https://res.cloudinary.com/bsm/image/upload/v1622035931/blablacar.svg')
#   artpiece.photo.attach()

#   puts "Created #{artpiece.name}"
# end

the_scream = Artpiece.new(name: "The Scream", category:"painting", artist: "Edvard Munch", description: "Oil, tempera, pastel and crayon on cardboard", price_per_day: 10000 )
the_scream.user = alex
the_scream_photo_url = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Edvard_Munch_-_The_Scream%2C_1910_%28Munch_Museum%29.jpg/473px-Edvard_Munch_-_The_Scream%2C_1910_%28Munch_Museum%29.jpg')
the_scream.photo.attach(io: the_scream_photo_url, filename: "image.jpg", content_type: "image/jpg")
the_scream.save!
# the_cellist = Artpiece.new(name: "The Cellist", category:"photo", artist: "Robert Doisneau", description: "With its compositional beauty and humor, this photo represents the brilliant collaboration between photographer Robert Doisneau (14 April 1912 – 1 April 1994) and cellist Maurice Baquet (26 May 1911 – 8 July 2005).", price_per_day: 2300 )
# the_cellist.user = alex
# the_cellist_photo_url = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Edvard_Munch_-_the_cellist%2C_1910_%28Munch_Museum%29.jpg/473px-Edvard_Munch_-_the_cellist%2C_1910_%28Munch_Museum%29.jpg')
# the_cellist.photo.attach(io: the_cellist_photo_url, filename: "image.jpg", content_type: "image/jpg")
# le_penseur = Artpiece.new(name: "Le Penseur", category:"scultpture", artist: "Auguste Rodin", description: "Le Penseur est l'une des plus célèbres sculptures en bronze d'Auguste Rodin. Elle représente un homme en train de méditer, semblant devoir faire face à un profond dilemme.", price_per_day: 450000 )
# vitruvian_man = Artpiece.new(name: "Vitruvian Man", category:"drawing", artist: "Leonardo da Vinci", description: "the quintessential Renaissance man whose unending curiosity inspired him to study art, engineering, and nature", price_per_day: 50000 )
# famous = Artpiece.new(name: "Famous", category:"painting", artist: "Jean-Michel Basquiat", description: "La cote de l'artiste a crû de manière régulière. En mai 2016, une de ses toiles, intitulée Untitled, décroche un nouveau record en étant adjugée 57,2 millions de dollars (50,2 millions d’euros) lors d’enchères organisées par Christie’s à New York", price_per_day: 43660 )

puts "Finished!"
