# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Cleaning database..."

Artpiece.destroy_all
User.destroy_all

# USER
puts "Creating user..."

alex = User.create({ email: "alexandre.vrla@gmail.com", password: "123456", password_confirmation: "123456" })
jade = User.create({ email: "cormier.jade@gmail.com", password: "123456", password_confirmation: "123456" })
victor = User.create({ email: "victor.bourgouin@hotmail.fr", password: "123456", password_confirmation: "123456" })
damien = User.create({ email: "damienjouaneau@gmail.com", password: "123456", password_confirmation: "123456" })


puts "User finished!"

# ARTPIECE
mona_lisa = Artpiece.new(name: "Mona Lisa", user_id: 2, category:"painting", artist: "Leonardo da Vinci", description: " The Mona Lisa bears a strong resemblance to many Renaissance depictions of the Virgin Mary, who was at that time seen as an ideal for womanhood. The woman sits markedly upright in a pozzetto armchair with her arms folded, a sign of her reserved posture. Her gaze is fixed on the observer. The woman appears alive to an unusual extent, which Leonardo achieved by his method of not drawing outlines (sfumato). The soft blending creates an ambiguous mood mainly in two features: the corners of the mouth, and the corners of the eyes.", price_per_day: 1000000)
mona_lisa.user = jade
mona_lisa_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637271286/art%40home%20local/Mona_lisa_aqhxqv.jpg')
mona_lisa.photo.attach(io: mona_lisa_photo_url, filename: "image.jpg", content_type: "image/jpg")
mona_lisa.save!
tahitian_landscape = Artpiece.new(name: "Tahitian Landscape", category:"painting", artist: "Paul Guauguin", description: "Paul Gauguin went to Tahiti in 1891 in search of new, exotic motifs, but also to escape European civilization, which he felt was artificial and spiritually bankrupt. This picture, one of the first he painted in the South Seas, exhibits the artist's characteristic Post-Impressionist style. In it, Gauguin used sinuous contours and intense colors to express the joy and serenity inspired by the lush tropical site.", price_per_day: 8000 )
tahitian_landscape.user = alex
tahitian_landscape_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637271263/art%40home%20local/Tahitian_landscape_cuyi10.jpg')
tahitian_landscape.photo.attach(io: tahitian_landscape_photo_url, filename: "image.jpg", content_type: "image/jpg")
tahitian_landscape.save!
femme_debout = Artpiece.new(name: "Femme Debout", category: "sculpture", artist: "Alberto Giacometti", description: "Fig??e au garde-??-vous dans une position hi??ratique, les mains coll??es au corps, les jambes presque enti??rement soud??es entre elles, les ??normes pieds cun??iformes englu??s au sol mais qui semblent pr??ts ?? se mouvoir, la haute et puissante figure poss??de la majestas d???une statue sortie de la nuit des temps : sa dimension extraordinaire, qui surpasse de loin la hauteur habituelle de la s??rie pr??c??dente des ?? Femmes de Venise ?? (1956), lui donne une dignit?? quasi sacr??e ; elle suscite, chez qui la regarde, l???impression d???appartenir ?? un monde autre. Hissant sa nudit?? dans une solitude d???indiff??rence, elle est l??, telle une d??esse p??trifi??e, asexu??e, la t??te plate sans cheveux, le regard frontal, les ??paules carr??es, le cou muscl?? ; seule la rondeur des hanches et des seins indique qu???il s???agit d???une femme.

", price_per_day: 12000 )
femme_debout.user = victor
femme_debout_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637271274/art%40home%20local/femme_debout_h4isir.jpg')
femme_debout.photo.attach(io: femme_debout_photo_url, filename: "image.jpg", content_type: "image/jpg")
femme_debout.save!
mit_dem_schwarzen_bogen = Artpiece.new(name: "Mit dem schwarzen Bogen", user_id: 3, category: "painting", artist: "Wassily Kandinsky", description: "Quand on regarde pour la premi??re fois cette grande oeuvre abstraite, on a l???impression que cette composition a ??t?? cr????e par un jeu des formes et de contrastes de couleurs qui sont organis??s autour du point central de tableau qu???est l???arc noir. La composition r??unit trois masses de couleurs : bleu, rouge et violet. La forme ??bleue?? ??merge du coin en bas ?? gauche, elle traverse l???espace en allant du blanc-jaune jusqu???au rouge orange. Pour Kandinsky le bleu est une couleur ??typiquement c??leste??. La jaune est ??la couleur typiquement terrestre dont la violence peut ??tre p??nible et agressive?? La chaleur du jaune avec le froid du bleu cr??ent un contraste tr??s vivant et ??dynamique??. Le blanc est comme ??un silence?? Face ?? elles, se trouve la couleur typiquement chaude et tr??s vivante, le ??rouge vermillon?? qui ??donne l???impression de force, d?????nergie, de fougue, de d??cisions, de joie, de triomphe.

", price_per_day: 34000 )
mit_dem_schwarzen_bogen.user = alex
mit_dem_schwarzen_bogen_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637271251/art%40home%20local/Mit_dem_schwarzen_Bogen_ozbarn.jpg')
mit_dem_schwarzen_bogen.photo.attach(io: mit_dem_schwarzen_bogen_photo_url, filename: "image.jpg", content_type: "image/jpg")
mit_dem_schwarzen_bogen.save!
the_scream = Artpiece.new(name: "The Scream", user_id: 4, category: "painting", artist: "Edvard Munch", description: "Oil, tempera, pastel and crayon on cardboard", price_per_day: 10000 )
the_scream.user = alex
the_scream_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637235461/art%40home%20local/Edvard_Munch__1893__The_Scream__oil__tempera_and_pastel_on_cardboard__91_x_73_cm__National_Gallery_of_Norway_f1fr7g.jpg')
the_scream.photo.attach(io: the_scream_photo_url, filename: "image.jpg", content_type: "image/jpg")
the_scream.save!
the_cellist = Artpiece.new(name: "The Cellist", category:"photo", artist: "Robert Doisneau", description: "With its compositional beauty and humor, this photo represents the brilliant collaboration between photographer Robert Doisneau (14 April 1912 ??? 1 April 1994) and cellist Maurice Baquet (26 May 1911 ??? 8 July 2005).", price_per_day: 2300 )
the_cellist.user = alex
the_cellist_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637235230/art%40home%20local/the-cellist-1957_fk4yfe.jpg')
the_cellist.photo.attach(io: the_cellist_photo_url, filename: "image.jpg", content_type: "image/jpg")
the_cellist.save!
le_penseur = Artpiece.new(name: "Le Penseur", category:"sculpture", artist: "Auguste Rodin", description: "Le Penseur est l'une des plus c??l??bres sculptures en bronze d'Auguste Rodin. Elle repr??sente un homme en train de m??diter, semblant devoir faire face ?? un profond dilemme.", price_per_day: 450000 )
le_penseur.user = alex
le_penseur_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637235249/art%40home%20local/Le_Penseur_uwvsbj.jpg')
le_penseur.photo.attach(io: le_penseur_photo_url, filename: "image.jpg", content_type: "image/jpg")
le_penseur.save!
vitruvian_man = Artpiece.new(name: "Vitruvian Man", category:"drawing", artist: "Leonardo da Vinci", description: "the quintessential Renaissance man whose unending curiosity inspired him to study art, engineering, and nature", price_per_day: 230000 )
vitruvian_man.user = alex
vitruvian_man_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637235238/art%40home%20local/Leonardo-da-Vinci-Vitruvian-Man_n31dh7.jpg')
vitruvian_man.photo.attach(io: vitruvian_man_photo_url, filename: "image.jpg", content_type: "image/jpg")
vitruvian_man.save!
famous = Artpiece.new(
name: "Famous",
category:"painting",
artist: "Jean-Michel Basquiat",
description: "La cote de l'artiste a cr?? de mani??re r??guli??re. En mai 2016, une de ses toiles, intitul??e Untitled, d??croche un nouveau record en ??tant adjug??e 57,2 millions de dollars (50,2 millions d???euros) lors d???ench??res organis??es par Christie???s ?? New York",
price_per_day: 54888,
user_id: 1 )
famous.user = alex
famous_photo_url = URI.open('https://res.cloudinary.com/dbogiehad/image/upload/v1637235226/art%40home%20local/basquiat_pxvbxh.jpg')
famous.photo.attach(io: famous_photo_url, filename: "image.jpg", content_type: "image/jpg")
famous.save!

puts "Artpiece Finished!"
