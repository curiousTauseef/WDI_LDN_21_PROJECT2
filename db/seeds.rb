# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "posts", "stations", "lines", "messages", "conversations", "lines_stations", "posts_stations"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

user1 = User.create!(
  username: "kittykat",
  first_name: "Katherine",
  last_name: "Barlow",
  admin: true,
  bio: "Single and ready to mingle. Music trailblazer. Foodaholic. General web aficionado. Proud alcohol lover.",
  email: "kitty.barlow@something.com",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/Kat.jpeg')))

user2 = User.create!(
  username: "cdawg",
  first_name: "Conrad",
  last_name: "Watson",
  email: "conrad.watson@something.com",
  bio: "I'm looking for a rich husband. Social media enthusiast. Prone to fits of apathy. Tv practitioner. Professional zombie ninja.",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/cody.jpg')))

user3 = User.create!(
  username: "saltyolive",
  first_name: "Olive",
  last_name: "Snook",
  email: "olivesnook@something.com",
  bio: "Professional food junkie. Social media practitioner. Hipster-friendly web scholar. Infuriatingly humble pop culture aficionado.",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/Kat1.jpeg')))

user4 = User.create!(
  username: "raneG",
  first_name: "Rane",
  last_name: "Gowan",
  bio: "Internet maven. Zombie practitioner. Pop culture lover. Amateur introvert. Music geek. Extreme bacon guru.",
  email: "rane.gowan@generalassemb.ly",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/rane.jpg')))

user5 = User.create!(
  username: "chansec",
  first_name: "Chanse",
  last_name: "Campbell",
  bio: "Reader. Award-winning organizer. Passionate entrepreneur. Hipster-friendly analyst.",
  email: "chanse.campbell@generalassemb.ly",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/chanse.png')))

user6 = User.create!(
  username: "mickyginger",
  first_name: "Mike",
  last_name: "Hayden",
  bio: "Tv nerd. Web aficionado. Alcohol guru. Incurable food practitioner. Evil social media fanatic. Twitter scholar. Coffee buff. Communicator.",
  email: "mike.hayden@generalassemb.ly",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/mike.jpg')))

user7 = User.create!(
  username: "lulu69",
  first_name: "Leanne",
  last_name: "Carter",
  bio: "Love cake. Falls down a lot. Wannabe writer. Coffee fan. Future teen idol. General travel ninja.",
  email: "leanne.carter@something.com",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/lua.jpeg')))

user8 = User.create!(
  username: "UncleChris",
  first_name: "Chris",
  last_name: "Rademacher",
  bio: "Passionate food maven. Subtly charming travelaholic. Web ninja. Proud internet scholar. Analyst. Coffee nerd. Total tv fanatic.",
  email: "tris.revill@something.com",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/tris.jpg')))

post1 = Post.new(
  title: "Greek guy who helped me out of Bank tube",     
  body: "I am Kat - the girl who looked very lost at Bank tube on my way to a first date. I was wearing a blue shirt dress and cream heels. I was just back from living in Nigeria. You were on your way out in Bank then Shoreditch wearing office attire. You walked me out and I really wanted to ask for your number but my date was there - awkward!!!! Hope you’re out there and single!!!",
  date_time: "2016-07-16 19:15",
  user_id: 1)

post2 = Post.new(
  title: "Central Line Holborn Saturday",     
  body: "We were on a central line train around 4:30pm on Saturday July 23rd. You (tall, good looking, wearing a hat and headphones) moved from where you were standing next to me by the door just before the Holborn stop where you got off. In the odd chance you see this and want to meet up, let's grab a drink.",
  date_time: "2016-07-23 16:30",
  user_id: 5)

post3 = Post.new(
  title: "Violin guy on train",     
  body: "We exchanged glances at Liverpool Street station before getting on the 10.42pm train on Sunday to Oxford Circus. You then say down in the seats adjacent. Was going to strike up a conversation when we sat down but then the lady nearby asked you about your instrument. Doh. I was wearing blue trousers and a cardigan and listening to radio through my phone. I felt a connection with you - would love to meet properly for a drink or coffee!",
  date_time: "2016-07-31 10:42",
  user_id: 3)

post4 = Post.new(
  title: "Handsome chap with dark hair",     
  body: "7.45ish, Northern Line Northbound platform. To the handsome chap with a capacity for prolongued eye contact. We were face to face til the doors opened, you got off as I got on. You kept looking as you walked into the distance down the stairs. I was wearing round gold glasses, black t-shirt, carrying a tweed jacket and a small brown suitcase. If I’d not had a flight to catch, I’d have stopped and talked!",
  date_time: "2016-06-23 07:45",
  user_id: 2)

post5 = Post.new(
  title: "Ginger guy on the Northern line to Oxford Circus",     
  body: "Hi, tall, ginger guy sitting on the northbound Northern line. You were wearing shorts and a greenish long sleeved blouse. I got on at Camden Town, stood next to you and accidentally step on your foot. we both got off at Oxford Circus around 9.30 am on Thursday, 07/07 but I immediately lost track of you. I promise I won’t step on your feet when we’ll go dancing! The brunette, long haired girl wearing glasses, a striped skirt and ballerina flat shoes.",
  date_time: "2016-07-07 09:30",
  user_id: 7)

post6 = Post.new(
  title: "We met in the Central Line London Tube Underground",     
  body: "I met a boy with black, curly and short hair, blue eyes and tall in the Central Line Underground towards Newbury Park, in London on Friday night at about 22:30 on 10/6/2016. He was wearing dark blue T-shirt, jeans and metal watch. He also has a skull tattoo on his right arm (bicep). We smiled and looked at each other a few times. Then I got off the tube at Stratford and we waved Goodbye. I would like to see you again.",
  date_time: "2016-06-10 22:30",
  user_id: 2)

post7 = Post.new(
  title: "'Catwoman' on the District Line, Mon. 1/8",     
  body: "You: beautiful, curvaceous girl with brown, curly hair and fair skin, wearing cat ear headphones (or cat ears and headphones?), and a black bodysuit/leggings. Maybe coming from a workout? Me: slim, seated nearby, wearing a business suit, heading to work, just my regular ears, with eyes possibly popping out of my head. I hoped you too would be on the train until Aldgate station so I could talk to you, but alas, you got off before. Of course, headphones present a challenge, and this being the London area, you're almost definitely in an exclusive, long-term, all-consuming relationship...Anyway, even if the sight of someone like you were not rare for this neighborhood - and even rarer for the tube - you still would have made my day. Thanks for that. Meow! (Sorry.)",
  date_time: "2016-08-01 08:30",
  user_id: 4)

post8 = Post.new(
  title: "Train to Heathrow Airport",     
  body: "We ended up sitting together at the front of the train, talked a bit, and otherwise had a pleasant ride together. It's a shame I had to get off so soon when you were going all the way to Heathrow, I really wanted to ask you out for drinks. You're older than me, but I really don't mind, especially with your gorgeous smile. Hopefully I hear from you.",
  date_time: "2016-07-31 16:30",
  user_id: 6)

post9 = Post.new(
  title: "Blonde guy with flesh tunnels x ",     
  body: "I get in the Overground at 17:47 in Liverpool Street station. I was sitting in front of you. I was wearing a blue cap turned backwards and a black jumper. You was just amazing sitting there and watching me eating my crisps. I felt uncomfortable so I moved to another chair. I got off the train at Tottenham Court Road. I waited until the last moment to talk to you. So, young blonde man, you better answer this time, cause I really want to know who made me blush for the first time after 3 years! Blew my chance on 02/08/2016 @ 17:47",
  date_time: "2016-08-02 17:47",
  user_id: 8)

acton_town = Station.new(name:"Acton Town")
aldgate = Station.new(name:"Aldgate")
aldgate_east = Station.new(name:"Aldgate East")
alperton = Station.new(name:"Alperton")
amersham = Station.new(name:"Amersham")
angel = Station.new(name:"Angel")
archway = Station.new(name:"Archway")
arnos_grove = Station.new(name:"Arnos Grove")
arsenal = Station.new(name:"Arsenal")
baker_street = Station.new(name:"Baker Street")
balham = Station.new(name:"Balham")
bank = Station.new(name:"Bank")
barbican = Station.new(name:"Barbican")
barking = Station.new(name:"Barking")
barkingside = Station.new(name:"Barkingside")
barons_court = Station.new(name:"Barons Court")
bayswater = Station.new(name:"Bayswater")
becontree = Station.new(name:"Becontree")
belsize_park = Station.new(name:"Belsize Park")
bermondsey = Station.new(name:"Bermondsey")
bethnal_green = Station.new(name:"Bethnal Green")
blackfriars = Station.new(name:"Blackfriars")
blackhorse_road = Station.new(name:"Blackhorse Road")
bond_street = Station.new(name:"Bond Street")
borough = Station.new(name:"Borough")
boston_manor = Station.new(name:"Boston Manor")
bounds_green = Station.new(name:"Bounds Green")
bow_road = Station.new(name:"Bow Road")
brent_cross = Station.new(name:"Brent Cross")
brixton = Station.new(name:"Brixton")
bromley_by_bow = Station.new(name:"Bromley-by-Bow")
buckhurst_hill = Station.new(name:"Buckhurst Hill")
burnt_oak = Station.new(name:"Burnt Oak")
caledonian_road = Station.new(name:"Caledonian Road")
camden_town = Station.new(name:"Camden Town")
canada_water = Station.new(name:"Canada Water")
canary_wharf = Station.new(name:"Canary Wharf")
canning_town = Station.new(name:"Canning Town")
cannon_street = Station.new(name:"Cannon Street")
canons_park = Station.new(name:"Canons Park")
chalfont_latimer = Station.new(name:"Chalfont & Latimer")
chalk_farm = Station.new(name:"Chalk Farm")
chancery_lane = Station.new(name:"Chancery Lane")
charing_cross = Station.new(name:"Charing Cross")
chesham = Station.new(name:"Chesham")
chigwell = Station.new(name:"Chigwell")
chiswick_park = Station.new(name:"Chiswick Park")
chorleywood = Station.new(name:"Chorleywood")
clapham_common = Station.new(name:"Clapham Common")
clapham_north = Station.new(name:"Clapham North")
clapham_south = Station.new(name:"Clapham South")
cockfosters = Station.new(name:"Cockfosters")
colindale = Station.new(name:"Colindale")
colliers_wood = Station.new(name:"Colliers Wood")
covent_garden = Station.new(name:"Covent Garden")
croxley = Station.new(name:"Croxley")
dagenham_east = Station.new(name:"Dagenham East")
dagenham_heathway = Station.new(name:"Dagenham Heathway")
debden = Station.new(name:"Debden")
dollis_hill = Station.new(name:"Dollis Hill")
ealing_broadway = Station.new(name:"Ealing Broadway")
ealing_common = Station.new(name:"Ealing Common")
earls_court = Station.new(name:"Earl's Court")
east_acton = Station.new(name:"East Acton")
east_finchley = Station.new(name:"East Finchley")
east_ham = Station.new(name:"East Ham")
east_putney = Station.new(name:"East Putney")
eastcote = Station.new(name:"Eastcote")
edgware = Station.new(name:"Edgware")
edgware_road = Station.new(name:"Edgware Road")
elephant_castle = Station.new(name:"Elephant & Castle")
elm_park = Station.new(name:"Elm Park")
embankment = Station.new(name:"Embankment")
epping = Station.new(name:"Epping")
euston = Station.new(name:"Euston")
euston_square = Station.new(name:"Euston Square")
fairlop = Station.new(name:"Fairlop")
farringdon = Station.new(name:"Farringdon")
finchley_central = Station.new(name:"Finchley Central")
finchley_road = Station.new(name:"Finchley Road")
finsbury_park = Station.new(name:"Finsbury Park")
fulham_broadway = Station.new(name:"Fulham Broadway")
gants_hill = Station.new(name:"Gants Hill")
gloucester_road = Station.new(name:"Gloucester Road")
golders_green = Station.new(name:"Golders Green")
goldhawk_road = Station.new(name:"Goldhawk Road")
goodge_street = Station.new(name:"Goodge Street")
grange_hill = Station.new(name:"Grange Hill")
great_portland_street = Station.new(name:"Great Portland Street")
green_park = Station.new(name:"Green Park")
greenford = Station.new(name:"Greenford")
gunnersbury = Station.new(name:"Gunnersbury")
hainault = Station.new(name:"Hainault")
hammersmith = Station.new(name:"Hammersmith")
hampstead = Station.new(name:"Hampstead")
hanger_lane = Station.new(name:"Hanger Lane")
harlesden = Station.new(name:"Harlesden")
harrow_wealdstone = Station.new(name:"Harrow & Wealdstone")
harrow_on_the_hill = Station.new(name:"Harrow-on-the-Hill")
hatton_cross = Station.new(name:"Hatton Cross")
heathrow_terminal_4 = Station.new(name:"Heathrow Terminal 4")
heathrow_terminal_5 = Station.new(name:"Heathrow Terminal 5")
heathrow_terminals_2_3 = Station.new(name:"Heathrow Terminals 2 & 3")
hendon_central = Station.new(name:"Hendon Central")
high_barnet = Station.new(name:"High Barnet")
high_street_kensington = Station.new(name:"High Street Kensington")
highbury_islington = Station.new(name:"Highbury & Islington")
highgate = Station.new(name:"Highgate")
hillingdon = Station.new(name:"Hillingdon")
holborn = Station.new(name:"Holborn")
holland_park = Station.new(name:"Holland Park")
holloway_road = Station.new(name:"Holloway Road")
hornchurch = Station.new(name:"Hornchurch")
hounslow_central = Station.new(name:"Hounslow Central")
hounslow_east = Station.new(name:"Hounslow East")
hounslow_west = Station.new(name:"Hounslow West")
hyde_park_corner = Station.new(name:"Hyde Park Corner")
ickenham = Station.new(name:"Ickenham")
kennington = Station.new(name:"Kennington")
kensal_green = Station.new(name:"Kensal Green")
kensington_olympia = Station.new(name:"Kensington (Olympia)")
kentish_town = Station.new(name:"Kentish Town")
kenton = Station.new(name:"Kenton")
kew_gardens = Station.new(name:"Kew Gardens")
kilburn = Station.new(name:"Kilburn")
kilburn_park = Station.new(name:"Kilburn Park")
kings_cross_st_pancras = Station.new(name:"King's Cross St. Pancras")
kingsbury = Station.new(name:"Kingsbury")
knightsbridge = Station.new(name:"Knightsbridge")
ladbroke_grove = Station.new(name:"Ladbroke Grove")
lambeth_north = Station.new(name:"Lambeth North")
lancaster_gate = Station.new(name:"Lancaster Gate")
latimer_road = Station.new(name:"Latimer Road")
leicester_square = Station.new(name:"Leicester Square")
leyton = Station.new(name:"Leyton")
leytonstone = Station.new(name:"Leytonstone")
liverpool_street = Station.new(name:"Liverpool Street")
london_bridge = Station.new(name:"London Bridge")
loughton = Station.new(name:"Loughton")
maida_vale = Station.new(name:"Maida Vale")
manor_house = Station.new(name:"Manor House")
mansion_house = Station.new(name:"Mansion House")
marble_arch = Station.new(name:"Marble Arch")
marylebone = Station.new(name:"Marylebone")
mile_end = Station.new(name:"Mile End")
mill_hill_east = Station.new(name:"Mill Hill East")
monument = Station.new(name:"Monument")
moor_park = Station.new(name:"Moor Park")
moorgate = Station.new(name:"Moorgate")
morden = Station.new(name:"Morden")
mornington_crescent = Station.new(name:"Mornington Crescent")
neasden = Station.new(name:"Neasden")
newbury_park = Station.new(name:"Newbury Park")
north_acton = Station.new(name:"North Acton")
north_ealing = Station.new(name:"North Ealing")
north_greenwich = Station.new(name:"North Greenwich")
north_harrow = Station.new(name:"North Harrow")
north_wembley = Station.new(name:"North Wembley")
northfields = Station.new(name:"Northfields")
northolt = Station.new(name:"Northolt")
northwick_park = Station.new(name:"Northwick Park")
northwood = Station.new(name:"Northwood")
northwood_hills = Station.new(name:"Northwood Hills")
notting_hill_gate = Station.new(name:"Notting Hill Gate")
oakwood = Station.new(name:"Oakwood")
old_street = Station.new(name:"Old Street")
osterley = Station.new(name:"Osterley")
oval = Station.new(name:"Oval")
oxford_circus = Station.new(name:"Oxford Circus")
paddington = Station.new(name:"Paddington")
park_royal = Station.new(name:"Park Royal")
parsons_green = Station.new(name:"Parsons Green")
perivale = Station.new(name:"Perivale")
piccadilly_circus = Station.new(name:"Piccadilly Circus")
pimlico = Station.new(name:"Pimlico")
pinner = Station.new(name:"Pinner")
plaistow = Station.new(name:"Plaistow")
preston_road = Station.new(name:"Preston Road")
putney_bridge = Station.new(name:"Putney Bridge")
queens_park = Station.new(name:"Queen's Park")
queensbury = Station.new(name:"Queensbury")
queensway = Station.new(name:"Queensway")
ravenscourt_park = Station.new(name:"Ravenscourt Park")
rayners_lane = Station.new(name:"Rayners Lane")
redbridge = Station.new(name:"Redbridge")
regents_park = Station.new(name:"Regent's Park")
richmond = Station.new(name:"Richmond")
rickmansworth = Station.new(name:"Rickmansworth")
roding_valley = Station.new(name:"Roding Valley")
royal_oak = Station.new(name:"Royal Oak")
ruislip = Station.new(name:"Ruislip")
ruislip_gardens = Station.new(name:"Ruislip Gardens")
ruislip_manor = Station.new(name:"Ruislip Manor")
russell_square = Station.new(name:"Russell Square")
seven_sisters = Station.new(name:"Seven Sisters")
shepherds_bush = Station.new(name:"Shepherd's Bush")
shepherds_bush_market = Station.new(name:"Shepherd's Bush Market")
sloane_square = Station.new(name:"Sloane Square")
snaresbrook = Station.new(name:"Snaresbrook")
south_ealing = Station.new(name:"South Ealing")
south_harrow = Station.new(name:"South Harrow")
south_kensington = Station.new(name:"South Kensington")
south_kenton = Station.new(name:"South Kenton")
south_ruislip = Station.new(name:"South Ruislip")
south_wimbledon = Station.new(name:"South Wimbledon")
south_woodford = Station.new(name:"South Woodford")
southfields = Station.new(name:"Southfields")
southgate = Station.new(name:"Southgate")
southwark = Station.new(name:"Southwark")
st_jamess_park = Station.new(name:"St. James's Park")
st_johns_wood = Station.new(name:"St. John's Wood")
st_pauls = Station.new(name:"St. Paul's")
stamford_brook = Station.new(name:"Stamford Brook")
stanmore = Station.new(name:"Stanmore")
stepney_green = Station.new(name:"Stepney Green")
stockwell = Station.new(name:"Stockwell")
stonebridge_park = Station.new(name:"Stonebridge Park")
stratford = Station.new(name:"Stratford")
sudbury_hill = Station.new(name:"Sudbury Hill")
sudbury_town = Station.new(name:"Sudbury Town")
swiss_cottage = Station.new(name:"Swiss Cottage")
temple = Station.new(name:"Temple")
theydon_bois = Station.new(name:"Theydon Bois")
tooting_bec = Station.new(name:"Tooting Bec")
tooting_broadway = Station.new(name:"Tooting Broadway")
tottenham_court_road = Station.new(name:"Tottenham Court Road")
tottenham_hale = Station.new(name:"Tottenham Hale")
totteridge_whetstone = Station.new(name:"Totteridge & Whetstone")
tower_hill = Station.new(name:"Tower Hill")
tufnell_park = Station.new(name:"Tufnell Park")
turnham_green = Station.new(name:"Turnham Green")
turnpike_lane = Station.new(name:"Turnpike Lane")
upminster = Station.new(name:"Upminster")
upminster_bridge = Station.new(name:"Upminster Bridge")
upney = Station.new(name:"Upney")
upton_park = Station.new(name:"Upton Park")
uxbridge = Station.new(name:"Uxbridge")
vauxhall = Station.new(name:"Vauxhall")
victoria = Station.new(name:"Victoria")
walthamstow_central = Station.new(name:"Walthamstow Central")
wanstead = Station.new(name:"Wanstead")
warren_street = Station.new(name:"Warren Street")
warwick_avenue = Station.new(name:"Warwick Avenue")
waterloo = Station.new(name:"Waterloo")
watford = Station.new(name:"Watford")
wembley_central = Station.new(name:"Wembley Central")
wembley_park = Station.new(name:"Wembley Park")
west_acton = Station.new(name:"West Acton")
west_brompton = Station.new(name:"West Brompton")
west_finchley = Station.new(name:"West Finchley")
west_ham = Station.new(name:"West Ham")
west_hampstead = Station.new(name:"West Hampstead")
west_harrow = Station.new(name:"West Harrow")
west_kensington = Station.new(name:"West Kensington")
west_ruislip = Station.new(name:"West Ruislip")
westbourne_park = Station.new(name:"Westbourne Park")
westminster = Station.new(name:"Westminster")
white_city = Station.new(name:"White City")
whitechapel = Station.new(name:"Whitechapel")
willesden_green = Station.new(name:"Willesden Green")
willesden_junction = Station.new(name:"Willesden Junction")
wimbledon = Station.new(name:"Wimbledon")
wimbledon_park = Station.new(name:"Wimbledon Park")
wood_green = Station.new(name:"Wood Green")
wood_lane = Station.new(name:"Wood Lane")
woodford = Station.new(name:"Woodford")
woodside_park = Station.new(name:"Woodside Park")

acton_town.save(validate: false)
aldgate.save(validate: false)
aldgate_east.save(validate: false)
alperton.save(validate: false)
amersham.save(validate: false)
angel.save(validate: false)
archway.save(validate: false)
arnos_grove.save(validate: false)
arsenal.save(validate: false)
baker_street.save(validate: false)
balham.save(validate: false)
bank.save(validate: false)
barbican.save(validate: false)
barking.save(validate: false)
barkingside.save(validate: false)
barons_court.save(validate: false)
bayswater.save(validate: false)
becontree.save(validate: false)
belsize_park.save(validate: false)
bermondsey.save(validate: false)
bethnal_green.save(validate: false)
blackfriars.save(validate: false)
blackhorse_road.save(validate: false)
bond_street.save(validate: false)
borough.save(validate: false)
boston_manor.save(validate: false)
bounds_green.save(validate: false)
bow_road.save(validate: false)
brent_cross.save(validate: false)
brixton.save(validate: false)
bromley_by_bow.save(validate: false)
buckhurst_hill.save(validate: false)
burnt_oak.save(validate: false)
caledonian_road.save(validate: false)
camden_town.save(validate: false)
canada_water.save(validate: false)
canary_wharf.save(validate: false)
canning_town.save(validate: false)
cannon_street.save(validate: false)
canons_park.save(validate: false)
chalfont_latimer.save(validate: false)
chalk_farm.save(validate: false)
chancery_lane.save(validate: false)
charing_cross.save(validate: false)
chesham.save(validate: false)
chigwell.save(validate: false)
chiswick_park.save(validate: false)
chorleywood.save(validate: false)
clapham_common.save(validate: false)
clapham_north.save(validate: false)
clapham_south.save(validate: false)
cockfosters.save(validate: false)
colindale.save(validate: false)
colliers_wood.save(validate: false)
covent_garden.save(validate: false)
croxley.save(validate: false)
dagenham_east.save(validate: false)
dagenham_heathway.save(validate: false)
debden.save(validate: false)
dollis_hill.save(validate: false)
ealing_broadway.save(validate: false)
ealing_common.save(validate: false)
earls_court.save(validate: false)
east_acton.save(validate: false)
east_finchley.save(validate: false)
east_ham.save(validate: false)
east_putney.save(validate: false)
eastcote.save(validate: false)
edgware.save(validate: false)
edgware_road.save(validate: false)
elephant_castle.save(validate: false)
elm_park.save(validate: false)
embankment.save(validate: false)
epping.save(validate: false)
euston.save(validate: false)
euston_square.save(validate: false)
fairlop.save(validate: false)
farringdon.save(validate: false)
finchley_central.save(validate: false)
finchley_road.save(validate: false)
finsbury_park.save(validate: false)
fulham_broadway.save(validate: false)
gants_hill.save(validate: false)
gloucester_road.save(validate: false)
golders_green.save(validate: false)
goldhawk_road.save(validate: false)
goodge_street.save(validate: false)
grange_hill.save(validate: false)
great_portland_street.save(validate: false)
green_park.save(validate: false)
greenford.save(validate: false)
gunnersbury.save(validate: false)
hainault.save(validate: false)
hammersmith.save(validate: false)
hampstead.save(validate: false)
hanger_lane.save(validate: false)
harlesden.save(validate: false)
harrow_wealdstone.save(validate: false)
harrow_on_the_hill.save(validate: false)
hatton_cross.save(validate: false)
heathrow_terminal_4.save(validate: false)
heathrow_terminal_5.save(validate: false)
heathrow_terminals_2_3.save(validate: false)
hendon_central.save(validate: false)
high_barnet.save(validate: false)
high_street_kensington.save(validate: false)
highbury_islington.save(validate: false)
highgate.save(validate: false)
hillingdon.save(validate: false)
holborn.save(validate: false)
holland_park.save(validate: false)
holloway_road.save(validate: false)
hornchurch.save(validate: false)
hounslow_central.save(validate: false)
hounslow_east.save(validate: false)
hounslow_west.save(validate: false)
hyde_park_corner.save(validate: false)
ickenham.save(validate: false)
kennington.save(validate: false)
kensal_green.save(validate: false)
kensington_olympia.save(validate: false)
kentish_town.save(validate: false)
kenton.save(validate: false)
kew_gardens.save(validate: false)
kilburn.save(validate: false)
kilburn_park.save(validate: false)
kings_cross_st_pancras.save(validate: false)
kingsbury.save(validate: false)
knightsbridge.save(validate: false)
ladbroke_grove.save(validate: false)
lambeth_north.save(validate: false)
lancaster_gate.save(validate: false)
latimer_road.save(validate: false)
leicester_square.save(validate: false)
leyton.save(validate: false)
leytonstone.save(validate: false)
liverpool_street.save(validate: false)
london_bridge.save(validate: false)
loughton.save(validate: false)
maida_vale.save(validate: false)
manor_house.save(validate: false)
mansion_house.save(validate: false)
marble_arch.save(validate: false)
marylebone.save(validate: false)
mile_end.save(validate: false)
mill_hill_east.save(validate: false)
monument.save(validate: false)
moor_park.save(validate: false)
moorgate.save(validate: false)
morden.save(validate: false)
mornington_crescent.save(validate: false)
neasden.save(validate: false)
newbury_park.save(validate: false)
north_acton.save(validate: false)
north_ealing.save(validate: false)
north_greenwich.save(validate: false)
north_harrow.save(validate: false)
north_wembley.save(validate: false)
northfields.save(validate: false)
northolt.save(validate: false)
northwick_park.save(validate: false)
northwood.save(validate: false)
northwood_hills.save(validate: false)
notting_hill_gate.save(validate: false)
oakwood.save(validate: false)
old_street.save(validate: false)
osterley.save(validate: false)
oval.save(validate: false)
oxford_circus.save(validate: false)
paddington.save(validate: false)
park_royal.save(validate: false)
parsons_green.save(validate: false)
perivale.save(validate: false)
piccadilly_circus.save(validate: false)
pimlico.save(validate: false)
pinner.save(validate: false)
plaistow.save(validate: false)
preston_road.save(validate: false)
putney_bridge.save(validate: false)
queens_park.save(validate: false)
queensbury.save(validate: false)
queensway.save(validate: false)
ravenscourt_park.save(validate: false)
rayners_lane.save(validate: false)
redbridge.save(validate: false)
regents_park.save(validate: false)
richmond.save(validate: false)
rickmansworth.save(validate: false)
roding_valley.save(validate: false)
royal_oak.save(validate: false)
ruislip.save(validate: false)
ruislip_gardens.save(validate: false)
ruislip_manor.save(validate: false)
russell_square.save(validate: false)
seven_sisters.save(validate: false)
shepherds_bush.save(validate: false)
shepherds_bush_market.save(validate: false)
sloane_square.save(validate: false)
snaresbrook.save(validate: false)
south_ealing.save(validate: false)
south_harrow.save(validate: false)
south_kensington.save(validate: false)
south_kenton.save(validate: false)
south_ruislip.save(validate: false)
south_wimbledon.save(validate: false)
south_woodford.save(validate: false)
southfields.save(validate: false)
southgate.save(validate: false)
southwark.save(validate: false)
st_jamess_park.save(validate: false)
st_johns_wood.save(validate: false)
st_pauls.save(validate: false)
stamford_brook.save(validate: false)
stanmore.save(validate: false)
stepney_green.save(validate: false)
stockwell.save(validate: false)
stonebridge_park.save(validate: false)
stratford.save(validate: false)
sudbury_hill.save(validate: false)
sudbury_town.save(validate: false)
swiss_cottage.save(validate: false)
temple.save(validate: false)
theydon_bois.save(validate: false)
tooting_bec.save(validate: false)
tooting_broadway.save(validate: false)
tottenham_court_road.save(validate: false)
tottenham_hale.save(validate: false)
totteridge_whetstone.save(validate: false)
tower_hill.save(validate: false)
tufnell_park.save(validate: false)
turnham_green.save(validate: false)
turnpike_lane.save(validate: false)
upminster.save(validate: false)
upminster_bridge.save(validate: false)
upney.save(validate: false)
upton_park.save(validate: false)
uxbridge.save(validate: false)
vauxhall.save(validate: false)
victoria.save(validate: false)
walthamstow_central.save(validate: false)
wanstead.save(validate: false)
warren_street.save(validate: false)
warwick_avenue.save(validate: false)
waterloo.save(validate: false)
watford.save(validate: false)
wembley_central.save(validate: false)
wembley_park.save(validate: false)
west_acton.save(validate: false)
west_brompton.save(validate: false)
west_finchley.save(validate: false)
west_ham.save(validate: false)
west_hampstead.save(validate: false)
west_harrow.save(validate: false)
west_kensington.save(validate: false)
west_ruislip.save(validate: false)
westbourne_park.save(validate: false)
westminster.save(validate: false)
white_city.save(validate: false)
whitechapel.save(validate: false)
willesden_green.save(validate: false)
willesden_junction.save(validate: false)
wimbledon.save(validate: false)
wimbledon_park.save(validate: false)
wood_green.save(validate: false)
wood_lane.save(validate: false)
woodford.save(validate: false)
woodside_park.save(validate: false)

post1.stations = [bank]
post2.stations = [holborn]
post3.stations = [oxford_circus, liverpool_street]
post4.stations = [elephant_castle]
post5.stations = [camden_town, oxford_circus]
post6.stations = [oxford_circus]
post7.stations = [aldgate]
post8.stations = [covent_garden]
post9.stations = [liverpool_street, tottenham_court_road]

post1.save(validate: false)
post2.save(validate: false)
post3.save(validate: false)
post4.save(validate: false)
post5.save(validate: false)
post6.save(validate: false)
post7.save(validate: false)
post8.save(validate: false)
post9.save(validate: false)

bakerloo_line = Line.new(name: "Bakerloo Line")
central_line = Line.new(name: "Central Line")
circle_line = Line.new(name: "Circle Line")
district_line = Line.new(name: "District")
hammersmith_city_line = Line.new(name: "Hammersmith & City Line")
jubilee_line = Line.new(name: "Jubilee Line")
metropolitan_line = Line.new(name: "Metropolitan Line")
northern_line = Line.new(name: "Northern Line")
piccadilly_line = Line.new(name: "Central Line")
victoria_line = Line.new(name: "Victoria Line")
waterloo_city_line = Line.new(name: "Waterloo & City Line")

bakerloo_line.stations = [
  baker_street,
  charing_cross,
  edgware_road,
  elephant_castle,
  embankment,
  harlesden,
  harrow_wealdstone,
  kensal_green,
  kenton,
  kilburn_park,
  lambeth_north,
  maida_vale,
  marylebone,
  north_wembley,
  oxford_circus,
  paddington,
  piccadilly_circus,
  queens_park,
  regents_park,
  south_kenton,
  stonebridge_park,
  warwick_avenue,
  waterloo,
  wembley_central,
  willesden_junction
  ]

central_line.stations = [
  bank,
  barkingside,
  bethnal_green,
  bond_street,
  buckhurst_hill,
  chancery_lane,
  chigwell,
  debden,
  ealing_broadway,
  east_acton,
  epping,
  fairlop,
  gants_hill,
  grange_hill,
  greenford,
  hainault,
  hanger_lane,
  holborn,
  holland_park,
  lancaster_gate,
  leyton,
  leytonstone,
  liverpool_street,
  loughton,
  marble_arch,
  mile_end,
  newbury_park,
  north_acton,
  northolt,
  notting_hill_gate,
  oxford_circus,
  perivale,
  queensway,
  redbridge,
  roding_valley,
  ruislip_gardens,
  shepherds_bush,
  snaresbrook,
  south_ruislip,
  south_woodford,
  st_pauls,
  stratford,
  theydon_bois,
  tottenham_court_road,
  wanstead,
  west_acton,
  west_ruislip,
  white_city,
  woodford
]

circle_line.stations = [
  aldgate,
  baker_street,
  barbican,
  bayswater,
  blackfriars,
  cannon_street,
  edgware_road,
  embankment,
  euston_square,
  farringdon,
  gloucester_road,
  goldhawk_road,
  great_portland_street,
  hammersmith,
  high_street_kensington,
  kings_cross_st_pancras,
  ladbroke_grove,
  latimer_road,
  liverpool_street,
  mansion_house,
  monument,
  moorgate,
  notting_hill_gate,
  paddington,
  royal_oak,
  shepherds_bush_market,
  sloane_square,
  south_kensington,
  st_jamess_park,
  temple,
  tower_hill,
  victoria,
  westbourne_park,
  westminster,
  wood_lane
]
  
district_line.stations = [
  acton_town,
  aldgate_east,
  barking,
  barons_court,
  bayswater,
  becontree,
  blackfriars,
  bow_road,
  bromley_by_bow,
  cannon_street,
  chiswick_park,
  dagenham_east,
  dagenham_heathway,
  ealing_broadway,
  ealing_common,
  earls_court,
  east_ham,
  east_putney,
  edgware_road,
  elm_park,
  embankment,
  fulham_broadway,
  gloucester_road,
  gunnersbury,
  hammersmith,
  high_street_kensington,
  hornchurch,
  kensington_olympia,
  kew_gardens,
  mansion_house,
  mile_end,
  monument,
  notting_hill_gate,
  paddington,
  parsons_green,
  plaistow,
  putney_bridge,
  ravenscourt_park,
  richmond,
  sloane_square,
  south_kensington,
  southfields,
  st_jamess_park,
  stamford_brook,
  stepney_green,
  temple,
  tower_hill,
  turnham_green,
  upminster_bridge,
  upminster,
  upney,
  upton_park,
  victoria,
  west_brompton,
  west_ham,
  west_kensington,
  westminster,
  whitechapel,
  wimbledon_park,
  wimbledon,
]

hammersmith_city_line.stations = [
  aldgate_east,
  baker_street,
  barbican,
  barking,
  bow_road,
  bromley_by_bow,
  east_ham,
  edgware_road,
  euston_square,
  farringdon,
  goldhawk_road,
  great_portland_street,
  hammersmith,
  kings_cross_st_pancras,
  ladbroke_grove,
  latimer_road,
  liverpool_street,
  mile_end,
  moorgate,
  paddington,
  plaistow,
  royal_oak,
  shepherds_bush_market,
  stepney_green,
  upton_park,
  west_ham,
  westbourne_park,
  whitechapel,
  wood_lane
]

jubilee_line.stations = [
  baker_street,
  bermondsey,
  bond_street,
  canada_water,
  canary_wharf,
  canning_town,
  canons_park,
  dollis_hill,
  finchley_road,
  green_park,
  kilburn,
  kingsbury,
  london_bridge,
  neasden,
  north_greenwich,
  queensbury,
  southwark,
  st_johns_wood,
  stanmore,
  stratford,
  swiss_cottage,
  waterloo,
  wembley_park,
  west_ham,
  west_hampstead,
  westminster,
  willesden_green
]

metropolitan_line.stations = [
  aldgate,
  amersham,
  baker_street,
  barbican,
  chalfont_latimer,
  chesham,
  chorleywood,
  croxley,
  eastcote,
  euston_square,
  farringdon,
  finchley_road,
  great_portland_street,
  harrow_on_the_hill,
  hillingdon,
  ickenham,
  kings_cross_st_pancras,
  liverpool_street,
  moor_park,
  moorgate,
  north_harrow,
  northwick_park,
  northwood_hills,
  northwood,
  pinner,
  preston_road,
  rayners_lane,
  rickmansworth,
  ruislip_manor,
  ruislip,
  uxbridge,
  watford,
  wembley_park,
  west_harrow
]

northern_line.stations = [
  angel,
  archway,
  balham,
  bank,
  belsize_park,
  borough,
  brent_cross,
  burnt_oak,
  camden_town,
  chalk_farm,
  charing_cross,
  clapham_common,
  clapham_north,
  clapham_south,
  colindale,
  colliers_wood,
  east_finchley,
  edgware,
  elephant_castle,
  embankment,
  euston,
  finchley_central,
  golders_green,
  goodge_street,
  hampstead,
  hendon_central,
  high_barnet,
  highgate,
  kennington,
  kentish_town,
  kings_cross_st_pancras,
  leicester_square,
  london_bridge,
  mill_hill_east,
  moorgate,
  morden,
  mornington_crescent,
  old_street,
  oval,
  south_wimbledon,
  stockwell,
  tooting_bec,
  tooting_broadway,
  tottenham_court_road,
  totteridge_whetstone,
  tufnell_park,
  warren_street,
  waterloo,
  west_finchley,
  woodside_park
]

piccadilly_line.stations = [
 acton_town,
 alperton,
 arnos_grove,
 arsenal,
 barons_court,
 boston_manor,
 bounds_green,
 caledonian_road,
 cockfosters,
 covent_garden,
 ealing_common,
 earls_court,
 eastcote,
 finsbury_park,
 gloucester_road,
 green_park,
 hammersmith,
 hatton_cross,
 heathrow_terminal_4,
 heathrow_terminal_5,
 heathrow_terminals_2_3,
 hillingdon,
 holborn,
 holloway_road,
 hounslow_central,
 hounslow_east,
 hounslow_west,
 hyde_park_corner,
 ickenham,
 kings_cross_st_pancras,
 knightsbridge,
 leicester_square,
 manor_house,
 north_ealing,
 northfields,
 oakwood,
 osterley,
 park_royal,
 piccadilly_circus,
 rayners_lane,
 ruislip_manor,
 ruislip,
 russell_square,
 south_ealing,
 south_harrow,
 south_kensington,
 southgate,
 sudbury_hill,
 sudbury_town,
 turnham_green,
 turnpike_lane,
 uxbridge,
 wood_green
]

victoria_line.stations = [
  blackhorse_road,
  brixton,
  euston,
  finsbury_park,
  green_park,
  highbury_islington,
  kings_cross_st_pancras,
  oxford_circus,
  pimlico,
  seven_sisters,
  stockwell,
  tottenham_hale,
  vauxhall,
  victoria,
  walthamstow_central,
  warren_street
]

waterloo_city_line.stations = [
  bank,
  waterloo
]

bakerloo_line.save(validate: false)
central_line.save(validate: false)
circle_line.save(validate: false)
district_line.save(validate: false)
hammersmith_city_line.save(validate: false)
jubilee_line.save(validate: false)
metropolitan_line.save(validate: false)
northern_line.save(validate: false)
piccadilly_line.save(validate: false)
victoria_line.save(validate: false)
waterloo_city_line.save(validate: false)