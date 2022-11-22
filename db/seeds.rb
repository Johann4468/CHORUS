puts "Cleaning up database..."

Rental.destroy_all
Instrument.destroy_all
User.destroy_all

puts "Database cleaned"

strut33 = User.create!(first_name: 'sylvain', last_name: 'PEREZ MORILLAS', user_name: 'strut33', email: 'spfilm33@gmail.com', password: '6404perezM')
jlmrie = User.create!(first_name: 'johann', last_name: 'LEMARIE', user_name: 'jlmrie', email: 'jlmrie@gmail.com', password: '6404perezM')
etienne40 = User.create!(first_name: 'etienne', last_name: 'BOURINET', user_name: 'etienne40', email: 'etienne40@gmail.com', password: '6404perezM')
onvatoutcassercheztoi = User.create!(first_name: 'jean-michel', last_name: 'AULAS', user_name: 'onvatoutcassécheztoi', email: 'okok@gmail.com', password: '6404perezM')

puts "users created"


instrument1 = Instrument.create!(user: strut33, brand: 'gibson', model: 'es335', category: 'guitar', year: 1969, color: 'cherry-red', price_per_day: 300, location: 'Bordeaux')
file = URI.open("http://cdn.shopify.com/s/files/1/0743/5341/products/IMG_1122_f538b291-74b9-4b1f-a6f8-741dbb2d9bd4.jpg?v=1653161695")
instrument1.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument2 = Instrument.create!(user: strut33, brand: 'fender', model: 'stratocaster', category: 'guitar', year: 1964, color: 'sunburst', price_per_day: 500, location: 'Paris')
file = URI.open("https://sweetspot-guitars.de/en/wp-content/uploads/sites/2/2021/01/1963-Fender-Stratocaster-03.jpg")
instrument2.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument3 = Instrument.create!(user: jlmrie, brand: 'casio', model: 'PX-S7000 HM', category: 'synthetiseur', year: 2022, color: 'yellow', price_per_day: 40, location: 'Nantes')
file = URI.open("https://th.static-thomann.de/thumb/padthumb600x600/pics/bdb/551707/17585495_800.jpg")
instrument3.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument4 = Instrument.create!(user: jlmrie, brand: 'fender', model: 'jazz-bass', category: 'bass', year: 1972, color: 'olympic-white', price_per_day: 230, location: 'Nimes')
file = URI.open("https://www.vintageandrare.com/uploads/products/68741/3522552/original.jpg?1668547141")
instrument4.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument5 = Instrument.create!(user: etienne40, brand: 'martin', model: '000', category: 'guitar', year: 1956, color: 'rosewood', price_per_day: 200, location: 'Arles')
file = URI.open("https://cdn.shopify.com/s/files/1/0452/1387/6381/products/98e963251bed7cb874f162b2ac41152d_800x.jpg?v=1661979522")
instrument5.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument6 = Instrument.create!(user: etienne40, brand: 'taylor', model: 'Baby-Taylor', category: 'guitar', year: 2010, color: 'natural', price_per_day: 80, location: 'Bordeaux')
file = URI.open("https://www.taylorguitars.com/sites/default/files/styles/guitar_pdp_feature/public/images/2022-02/Taylor-baby-series-BT1e-feature-6.jpg?h=21c3dcaf&itok=Tl58I7y_")
instrument6.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument7 = Instrument.create!(user: onvatoutcassercheztoi, brand: 'stradivarius', model: 'anthique', category: 'violin', year: 1432, color: 'relic', price_per_day: 12000, location: 'Nantes')
file = URI.open("https://www.sciencesetavenir.fr/assets/img/2017/05/05/cover-r4x3w1000-591171c30cbb8-000-lw1k6.jpg")
instrument7.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

instrument8 = Instrument.create!(user: onvatoutcassercheztoi, brand: 'nord', model: 'Nord-Electro', category: 'Piano', year: 2008, color: 'red', price_per_day: 300, location: 'Paris')
file = URI.open("https://www.musicoguide.com/wp-content/uploads/Nord-Electro-5-Angled.jpg")
instrument8.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

puts "Instrument created"
rental1 = Rental.create!(user: strut33, instrument: instrument8, start_date: "2022-11-22", end_date: "2022-11-24", total_price:600, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Sylvain")
rental2 = Rental.create!(user: strut33, instrument: instrument7, start_date: "2021-02-23", end_date: "2021-02-25", total_price:24000, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Sylvain")
rental3 = Rental.create!(user: jlmrie, instrument: instrument6, start_date: "2023-04-12", end_date: "2023-04-14", total_price:160, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Johann")
rental4 = Rental.create!(user: jlmrie, instrument: instrument5, start_date: "2022-04-02", end_date: "2022-04-04", total_price:400, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Johann")
rental5 = Rental.create!(user: etienne40, instrument: instrument4, start_date: "2020-04-19", end_date: "2020-04-21", total_price:460, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Etienne")
rental6 = Rental.create!(user: etienne40, instrument: instrument3, start_date: "2023-04-23", end_date: "2023-04-25", total_price:80, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Etienne")
rental7 = Rental.create!(user: onvatoutcassercheztoi, instrument: instrument2, start_date: "2023-04-29", end_date: "2023-05-01", total_price:1000, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Jean-Michel")
rental8 = Rental.create!(user: onvatoutcassercheztoi, instrument: instrument1, start_date: "2023-04-15", end_date: "2023-04-17", total_price:600, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Jean-Michel")
rental9 = Rental.create!(user: jlmrie, instrument: instrument1, start_date: "2023-04-23", end_date: "2023-04-25", total_price:1000, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Johann")
rental10 = Rental.create!(user: onvatoutcassercheztoi, instrument: instrument2, start_date: "2022-04-23", end_date: "2022-04-25", total_price:600, acceptation:"accepted", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Jean-Michel")

puts "rentals created"
