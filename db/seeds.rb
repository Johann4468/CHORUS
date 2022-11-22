require 'open-uri'
require 'json'

puts "Cleaning up database..."

Instrument.destroy_all

puts "Database cleaned"

Instrument.create!([
{
	brand:'gibson',
	model:'es335',
	category:'guitar',
	year:1969,
	color:'cherry-red',
	price_per_day:300,
	location:'Bordeaux',
	photo:"http://cdn.shopify.com/s/files/1/0743/5341/products/IMG_1122_f538b291-74b9-4b1f-a6f8-741dbb2d9bd4.jpg?v=1653161695"
},
{
	brand:'fender',
	model:'stratocaster',
	category:'guitar',
	year:1964,
	color:'sunburst',
	price_per_day:500,
	location:'Paris',
	photo:"https://sweetspot-guitars.de/en/wp-content/uploads/sites/2/2021/01/1963-Fender-Stratocaster-03.jpg"
},
{
	brand:'casio'
	model:'PX-S7000 HM'
	category:'synthetiseur'
	year:2022
	color:'yellow'
	price_per_day:40
	location:'Nantes'
	photo:"https://th.static-thomann.de/thumb/padthumb600x600/pics/bdb/551707/17585495_800.jpg"
},
{
	brand:'fender',
	model:'jazz-bass',
	category:'bass',
	year:1972,
	color:'olympic-white',
	price_per_day:230,
	location:'Nimes',
	photo:"https://www.vintageandrare.com/uploads/products/68741/3522552/original.jpg?1668547141"
},
{
	brand:'martin'
	model:'000'
	category:'guitar'
	year:1956
	color:'rosewood'
	price_per_day:200
	location:'Arles'
	photo:"https://cdn.shopify.com/s/files/1/0452/1387/6381/products/98e963251bed7cb874f162b2ac41152d_800x.jpg?v=1661979522"
},
{
	brand:'taylor',
	model:'Baby-Taylor',
	category:'guitar',
	year:2010,
	color:'natural',
	price_per_day:80,
	location:'Bordeaux',
	photo:"https://www.taylorguitars.com/sites/default/files/styles/guitar_pdp_feature/public/images/2022-02/Taylor-baby-series-BT1e-feature-6.jpg?h=21c3dcaf&itok=Tl58I7y_"
},
{
	brand:'stradivarius',
	model:'anthique',
	category:'violin',
	year:1432,
	color:'relic',
	price_per_day:12000,
	location:'Nantes',
	photo:"https://www.sciencesetavenir.fr/assets/img/2017/05/05/cover-r4x3w1000-591171c30cbb8-000-lw1k6.jpg"
},
{
	brand:'nord',
	model:'Nord-Electro',
	category:'Piano',
	year:2008,
	color:'red',
	price_per_day:300,
	location:'Paris',
	photo:"https://www.musicoguide.com/wp-content/uploads/Nord-Electro-5-Angled.jpg"
}])
puts "Instrument created"
