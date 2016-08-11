# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Load models
require_relative '../app/models/post.rb'
require_relative '../app/models/station.rb'
require_relative '../app/models/user.rb'
require_relative '../app/models/line.rb'


User.destroy_all
Post.destroy_all
Station.destroy_all 
Line.destroy_all  

user1 = User.create(
  username: "kittykat",
  first_name: "Katherine",
  last_name: "Barlow",
  admin: true,
  bio: "Single and ready to mingle. Music trailblazer. Foodaholic. General web aficionado. Proud alcohol lover.",
  email: "kitty.barlow@something.com",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/Kat.jpeg')))

user2 = User.create(
  username: "cdawg",
  first_name: "Conrad",
  last_name: "Watson",
  email: "conrad.watson@something.com",
  bio: "I'm looking for a rich husband. Social media enthusiast. Prone to fits of apathy. Tv practitioner. Professional zombie ninja.",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/cody.jpg')))

user3 = User.create(
  username: "saltyolive",
  first_name: "Olive",
  last_name: "Snook",
  email: "olivesnook@something.com",
  bio: "Professional food junkie. Social media practitioner. Hipster-friendly web scholar. Infuriatingly humble pop culture aficionado.",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/Kat1.jpeg')))

user4 = User.create(
  username: "raneG",
  first_name: "Rane",
  last_name: "Gowan",
  bio: "Internet maven. Zombie practitioner. Pop culture lover. Amateur introvert. Music geek. Extreme bacon guru.",
  email: "rane.gowan@generalassemb.ly",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/rane.jpg')))

user5 = User.create(
  username: "chansec",
  first_name: "Chanse",
  last_name: "Campbell",
  bio: "Reader. Award-winning organizer. Passionate entrepreneur. Hipster-friendly analyst.",
  email: "chanse.campbell@generalassemb.ly",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/imageschanse.png')))

user6 = User.create(
  username: "mickyginger",
  first_name: "Mike",
  last_name: "Hayden",
  bio: "Tv nerd. Web aficionado. Alcohol guru. Incurable food practitioner. Evil social media fanatic. Twitter scholar. Coffee buff. Communicator.",
  email: "mike.hayden@generalassemb.ly",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/mike.jpg')))

user7 = User.create(
  username: "lulu69",
  first_name: "Leanne",
  last_name: "Carter",
  bio: "Love cake. Falls down a lot. Wannabe writer. Coffee fan. Future teen idol. General travel ninja.",
  email: "leanne.carter@something.com",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/lua.jpeg')))

user8 = User.create(
  username: "UncleChris",
  first_name: "Chris",
  last_name: "Rademacher",
  bio: "Passionate food maven. Subtly charming travelaholic. Web ninja. Proud internet scholar. Analyst. Coffee nerd. Total tv fanatic.",
  email: "tris.revill@something.com",
  password: "password",
  password_confirmation: "password",
  profile_picture: File.open(File.join(Rails.root, '/db/images/tris.jpg')))

post1 = Post.create(
  title: "Greek guy who helped me out of Bank tube",     
  body: "I am Kat - the girl who looked very lost at Bank tube on my way to a first date. I was wearing a blue shirt dress and cream heels. I was just back from living in Nigeria. You were on your way out in Bank then Shoreditch wearing office attire. You walked me out and I really wanted to ask for your number but my date was there - awkward!!!! Hope you’re out there and single!!!",
  date_time: "2016-07-16 19:15",
  user_id: 1)

post2 = Post.create(
  title: "Central Line Holborn Saturday",     
  body: "We were on a central line train around 4:30pm on Saturday July 23rd. You (tall, good looking, wearing a hat and headphones) moved from where you were standing next to me by the door just before the Holborn stop where you got off. In the odd chance you see this and want to meet up, let's grab a drink.",
  date_time: "2016-07-23 16:30",
  user_id: 5)

post3 = Post.create(
  title: "Violin guy on train",     
  body: "We exchanged glances at Liverpool Street station before getting on the 10.42pm train on Sunday to Oxford Circus. You then say down in the seats adjacent. Was going to strike up a conversation when we sat down but then the lady nearby asked you about your instrument. Doh. I was wearing blue trousers and a cardigan and listening to radio through my phone. I felt a connection with you - would love to meet properly for a drink or coffee!",
  date_time: "2016-07-31 10:42",
  user_id: 3)

post4 = Post.create(
  title: "Handsome chap with dark hair",     
  body: "7.45ish, Northern Line Northbound platform. To the handsome chap with a capacity for prolongued eye contact. We were face to face til the doors opened, you got off as I got on. You kept looking as you walked into the distance down the stairs. I was wearing round gold glasses, black t-shirt, carrying a tweed jacket and a small brown suitcase. If I’d not had a flight to catch, I’d have stopped and talked!",
  date_time: "2016-06-23 07:45",
  user_id: 2)

post5 = Post.create(
  title: "Ginger guy on the Northern line to Oxford Circus",     
  body: "Hi, tall, ginger guy sitting on the northbound Northern line. You were wearing shorts and a greenish long sleeved blouse. I got on at Camden Town, stood next to you and accidentally step on your foot. we both got off at Oxford Circus around 9.30 am on Thursday, 07/07 but I immediately lost track of you. I promise I won’t step on your feet when we’ll go dancing! The brunette, long haired girl wearing glasses, a striped skirt and ballerina flat shoes.",
  date_time: "2016-07-07 09:30",
  user_id: 7)

post6 = Post.create(
  title: "We met in the Central Line London Tube Underground",     
  body: "I met a boy with black, curly and short hair, blue eyes and tall in the Central Line Underground towards Newbury Park, in London on Friday night at about 22:30 on 10/6/2016. He was wearing dark blue T-shirt, jeans and metal watch. He also has a skull tattoo on his right arm (bicep). We smiled and looked at each other a few times. Then I got off the tube at Stratford and we waved Goodbye. I would like to see you again.",
  date_time: "2016-06-10 22:30",
  user_id: 2)

post7 = Post.create(
  title: "'Catwoman' on the District Line, Mon. 1/8",     
  body: "You: beautiful, curvaceous girl with brown, curly hair and fair skin, wearing cat ear headphones (or cat ears and headphones?), and a black bodysuit/leggings. Maybe coming from a workout? Me: slim, seated nearby, wearing a business suit, heading to work, just my regular ears, with eyes possibly popping out of my head. I hoped you too would be on the train until Aldgate station so I could talk to you, but alas, you got off before. Of course, headphones present a challenge, and this being the London area, you're almost definitely in an exclusive, long-term, all-consuming relationship...Anyway, even if the sight of someone like you were not rare for this neighborhood - and even rarer for the tube - you still would have made my day. Thanks for that. Meow! (Sorry.)",
  date_time: "2016-08-01 08:30",
  user_id: 4)

post8 = Post.create(
  title: "Train to Heathrow Airport",     
  body: "We ended up sitting together at the front of the train, talked a bit, and otherwise had a pleasant ride together. It's a shame I had to get off so soon when you were going all the way to Heathrow, I really wanted to ask you out for drinks. You're older than me, but I really don't mind, especially with your gorgeous smile. Hopefully I hear from you.",
  date_time: "2016-07-31 16:30",
  user_id: 6)

post9 = Post.create(
  title: "Blonde guy with flesh tunnels x ",     
  body: "I get in the Overground at 17:47 in Liverpool Street station. I was sitting in front of you. I was wearing a blue cap turned backwards and a black jumper. You was just amazing sitting there and watching me eating my crisps. I felt uncomfortable so I moved to another chair. I got off the train at Tottenham Court Road. I waited until the last moment to talk to you. So, young blonde man, you better answer this time, cause I really want to know who made me blush for the first time after 3 years! Blew my chance on 02/08/2016 @ 17:47",
  date_time: "2016-08-02 17:47",
  user_id: 8)

acton_town = Station.create(name:"Acton Town")
aldgate = Station.create(name:"Aldgate")
aldgate_east = Station.create(name:"Aldgate East")
alperton = Station.create(name:"Alperton")
amersham = Station.create(name:"Amersham")
angel = Station.create(name:"Angel")
archway = Station.create(name:"Archway")
arnos_grove = Station.create(name:"Arnos Grove")
arsenal = Station.create(name:"Arsenal")
baker_street = Station.create(name:"Baker Street")
balham = Station.create(name:"Balham")
bank = Station.create(name:"Bank")
barbican = Station.create(name:"Barbican")
barking = Station.create(name:"Barking")
barkingside = Station.create(name:"Barkingside")
barons_court = Station.create(name:"Barons Court")
bayswater = Station.create(name:"Bayswater")
becontree = Station.create(name:"Becontree")
belsize_park = Station.create(name:"Belsize Park")
bermondsey = Station.create(name:"Bermondsey")
bethnal_green = Station.create(name:"Bethnal Green")
blackfriars = Station.create(name:"Blackfriars")
blackhorse_road = Station.create(name:"Blackhorse Road")
bond_street = Station.create(name:"Bond Street")
borough = Station.create(name:"Borough")
boston_manor = Station.create(name:"Boston Manor")
bounds_green = Station.create(name:"Bounds Green")
bow_road = Station.create(name:"Bow Road")
brent_cross = Station.create(name:"Brent Cross")
brixton = Station.create(name:"Brixton")
bromley_by_bow = Station.create(name:"Bromley-by-Bow")
buckhurst_hill = Station.create(name:"Buckhurst Hill")
burnt_oak = Station.create(name:"Burnt Oak")
caledonian_road = Station.create(name:"Caledonian Road")
camden_town = Station.create(name:"Camden Town")
canada_water = Station.create(name:"Canada Water")
canary_wharf = Station.create(name:"Canary Wharf")
canning_town = Station.create(name:"Canning Town")
cannon_street = Station.create(name:"Cannon Street")
canons_park = Station.create(name:"Canons Park")
chalfont_latimer = Station.create(name:"Chalfont & Latimer")
chalk_farm = Station.create(name:"Chalk Farm")
chancery_lane = Station.create(name:"Chancery Lane")
charing_cross = Station.create(name:"Charing Cross")
chesham = Station.create(name:"Chesham")
chigwell = Station.create(name:"Chigwell")
chiswick_park = Station.create(name:"Chiswick Park")
chorleywood = Station.create(name:"Chorleywood")
clapham_common = Station.create(name:"Clapham Common")
clapham_north = Station.create(name:"Clapham North")
clapham_south = Station.create(name:"Clapham South")
cockfosters = Station.create(name:"Cockfosters")
colindale = Station.create(name:"Colindale")
colliers_wood = Station.create(name:"Colliers Wood")
covent_garden = Station.create(name:"Covent Garden")
croxley = Station.create(name:"Croxley")
dagenham_east = Station.create(name:"Dagenham East")
dagenham_heathway = Station.create(name:"Dagenham Heathway")
debden = Station.create(name:"Debden")
dollis_hill = Station.create(name:"Dollis Hill")
ealing_broadway = Station.create(name:"Ealing Broadway")
ealing_common = Station.create(name:"Ealing Common")
earls_court = Station.create(name:"Earl's Court")
east_acton = Station.create(name:"East Acton")
east_finchley = Station.create(name:"East Finchley")
east_ham = Station.create(name:"East Ham")
east_putney = Station.create(name:"East Putney")
eastcote = Station.create(name:"Eastcote")
edgware = Station.create(name:"Edgware")
edgware_road = Station.create(name:"Edgware Road")
elephant_castle = Station.create(name:"Elephant & Castle")
elm_park = Station.create(name:"Elm Park")
embankment = Station.create(name:"Embankment")
epping = Station.create(name:"Epping")
euston = Station.create(name:"Euston")
euston_square = Station.create(name:"Euston Square")
fairlop = Station.create(name:"Fairlop")
farringdon = Station.create(name:"Farringdon")
finchley_central = Station.create(name:"Finchley Central")
finchley_road = Station.create(name:"Finchley Road")
finsbury_park = Station.create(name:"Finsbury Park")
fulham_broadway = Station.create(name:"Fulham Broadway")
gants_hill = Station.create(name:"Gants Hill")
gloucester_road = Station.create(name:"Gloucester Road")
golders_green = Station.create(name:"Golders Green")
goldhawk_road = Station.create(name:"Goldhawk Road")
goodge_street = Station.create(name:"Goodge Street")
grange_hill = Station.create(name:"Grange Hill")
great_portland_street = Station.create(name:"Great Portland Street")
green_park = Station.create(name:"Green Park")
greenford = Station.create(name:"Greenford")
gunnersbury = Station.create(name:"Gunnersbury")
hainault = Station.create(name:"Hainault")
hammersmith = Station.create(name:"Hammersmith")
hampstead = Station.create(name:"Hampstead")
hanger_lane = Station.create(name:"Hanger Lane")
harlesden = Station.create(name:"Harlesden")
harrow_wealdstone = Station.create(name:"Harrow & Wealdstone")
harrow_on_the_hill = Station.create(name:"Harrow-on-the-Hill")
hatton_cross = Station.create(name:"Hatton Cross")
heathrow_terminal_4 = Station.create(name:"Heathrow Terminal 4")
heathrow_terminal_5 = Station.create(name:"Heathrow Terminal 5")
heathrow_terminals_2_3 = Station.create(name:"Heathrow Terminals 2 & 3")
hendon_central = Station.create(name:"Hendon Central")
high_barnet = Station.create(name:"High Barnet")
high_street_kensington = Station.create(name:"High Street Kensington")
highbury_islington = Station.create(name:"Highbury & Islington")
highgate = Station.create(name:"Highgate")
hillingdon = Station.create(name:"Hillingdon")
holborn = Station.create(name:"Holborn")
holland_park = Station.create(name:"Holland Park")
holloway_road = Station.create(name:"Holloway Road")
hornchurch = Station.create(name:"Hornchurch")
hounslow_central = Station.create(name:"Hounslow Central")
hounslow_east = Station.create(name:"Hounslow East")
hounslow_west = Station.create(name:"Hounslow West")
hyde_park_corner = Station.create(name:"Hyde Park Corner")
ickenham = Station.create(name:"Ickenham")
kennington = Station.create(name:"Kennington")
kensal_green = Station.create(name:"Kensal Green")
kensington_olympia = Station.create(name:"Kensington (Olympia)")
kentish_town = Station.create(name:"Kentish Town")
kenton = Station.create(name:"Kenton")
kew_gardens = Station.create(name:"Kew Gardens")
kilburn = Station.create(name:"Kilburn")
kilburn_park = Station.create(name:"Kilburn Park")
kings_cross_st_pancras = Station.create(name:"King's Cross St. Pancras")
kingsbury = Station.create(name:"Kingsbury")
knightsbridge = Station.create(name:"Knightsbridge")
ladbroke_grove = Station.create(name:"Ladbroke Grove")
lambeth_north = Station.create(name:"Lambeth North")
lancaster_gate = Station.create(name:"Lancaster Gate")
latimer_road = Station.create(name:"Latimer Road")
leicester_square = Station.create(name:"Leicester Square")
leyton = Station.create(name:"Leyton")
leytonstone = Station.create(name:"Leytonstone")
liverpool_street = Station.create(name:"Liverpool Street")
london_bridge = Station.create(name:"London Bridge")
loughton = Station.create(name:"Loughton")
maida_vale = Station.create(name:"Maida Vale")
manor_house = Station.create(name:"Manor House")
mansion_house = Station.create(name:"Mansion House")
marble_arch = Station.create(name:"Marble Arch")
marylebone = Station.create(name:"Marylebone")
mile_end = Station.create(name:"Mile End")
mill_hill_east = Station.create(name:"Mill Hill East")
monument = Station.create(name:"Monument")
moor_park = Station.create(name:"Moor Park")
moorgate = Station.create(name:"Moorgate")
morden = Station.create(name:"Morden")
mornington_crescent = Station.create(name:"Mornington Crescent")
neasden = Station.create(name:"Neasden")
newbury_park = Station.create(name:"Newbury Park")
north_acton = Station.create(name:"North Acton")
north_ealing = Station.create(name:"North Ealing")
north_greenwich = Station.create(name:"North Greenwich")
north_harrow = Station.create(name:"North Harrow")
north_wembley = Station.create(name:"North Wembley")
northfields = Station.create(name:"Northfields")
northolt = Station.create(name:"Northolt")
northwick_park = Station.create(name:"Northwick Park")
northwood = Station.create(name:"Northwood")
northwood_hills = Station.create(name:"Northwood Hills")
notting_hill_gate = Station.create(name:"Notting Hill Gate")
oakwood = Station.create(name:"Oakwood")
old_street = Station.create(name:"Old Street")
osterley = Station.create(name:"Osterley")
oval = Station.create(name:"Oval")
oxford_circus = Station.create(name:"Oxford Circus")
paddington = Station.create(name:"Paddington")
park_royal = Station.create(name:"Park Royal")
parsons_green = Station.create(name:"Parsons Green")
perivale = Station.create(name:"Perivale")
piccadilly_circus = Station.create(name:"Piccadilly Circus")
pimlico = Station.create(name:"Pimlico")
pinner = Station.create(name:"Pinner")
plaistow = Station.create(name:"Plaistow")
preston_road = Station.create(name:"Preston Road")
putney_bridge = Station.create(name:"Putney Bridge")
queens_park = Station.create(name:"Queen's Park")
queensbury = Station.create(name:"Queensbury")
queensway = Station.create(name:"Queensway")
ravenscourt_park = Station.create(name:"Ravenscourt Park")
rayners_lane = Station.create(name:"Rayners Lane")
redbridge = Station.create(name:"Redbridge")
regents_park = Station.create(name:"Regent's Park")
richmond = Station.create(name:"Richmond")
rickmansworth = Station.create(name:"Rickmansworth")
roding_valley = Station.create(name:"Roding Valley")
royal_oak = Station.create(name:"Royal Oak")
ruislip = Station.create(name:"Ruislip")
ruislip_gardens = Station.create(name:"Ruislip Gardens")
ruislip_manor = Station.create(name:"Ruislip Manor")
russell_square = Station.create(name:"Russell Square")
seven_sisters = Station.create(name:"Seven Sisters")
shepherds_bush = Station.create(name:"Shepherd's Bush")
shepherds_bush_market = Station.create(name:"Shepherd's Bush Market")
sloane_square = Station.create(name:"Sloane Square")
snaresbrook = Station.create(name:"Snaresbrook")
south_ealing = Station.create(name:"South Ealing")
south_harrow = Station.create(name:"South Harrow")
south_kensington = Station.create(name:"South Kensington")
south_kenton = Station.create(name:"South Kenton")
south_ruislip = Station.create(name:"South Ruislip")
south_wimbledon = Station.create(name:"South Wimbledon")
south_woodford = Station.create(name:"South Woodford")
southfields = Station.create(name:"Southfields")
southgate = Station.create(name:"Southgate")
southwark = Station.create(name:"Southwark")
st_jamess_park = Station.create(name:"St. James's Park")
st_johns_wood = Station.create(name:"St. John's Wood")
st_pauls = Station.create(name:"St. Paul's")
stamford_brook = Station.create(name:"Stamford Brook")
stanmore = Station.create(name:"Stanmore")
stepney_green = Station.create(name:"Stepney Green")
stockwell = Station.create(name:"Stockwell")
stonebridge_park = Station.create(name:"Stonebridge Park")
stratford = Station.create(name:"Stratford")
sudbury_hill = Station.create(name:"Sudbury Hill")
sudbury_town = Station.create(name:"Sudbury Town")
swiss_cottage = Station.create(name:"Swiss Cottage")
temple = Station.create(name:"Temple")
theydon_bois = Station.create(name:"Theydon Bois")
tooting_bec = Station.create(name:"Tooting Bec")
tooting_broadway = Station.create(name:"Tooting Broadway")
tottenham_court_road = Station.create(name:"Tottenham Court Road")
tottenham_hale = Station.create(name:"Tottenham Hale")
totteridge_whetstone = Station.create(name:"Totteridge & Whetstone")
tower_hill = Station.create(name:"Tower Hill")
tufnell_park = Station.create(name:"Tufnell Park")
turnham_green = Station.create(name:"Turnham Green")
turnpike_lane = Station.create(name:"Turnpike Lane")
upminster = Station.create(name:"Upminster")
upminster_bridge = Station.create(name:"Upminster Bridge")
upney = Station.create(name:"Upney")
upton_park = Station.create(name:"Upton Park")
uxbridge = Station.create(name:"Uxbridge")
vauxhall = Station.create(name:"Vauxhall")
victoria = Station.create(name:"Victoria")
walthamstow_central = Station.create(name:"Walthamstow Central")
wanstead = Station.create(name:"Wanstead")
warren_street = Station.create(name:"Warren Street")
warwick_avenue = Station.create(name:"Warwick Avenue")
waterloo = Station.create(name:"Waterloo")
watford = Station.create(name:"Watford")
wembley_central = Station.create(name:"Wembley Central")
wembley_park = Station.create(name:"Wembley Park")
west_acton = Station.create(name:"West Acton")
west_brompton = Station.create(name:"West Brompton")
west_finchley = Station.create(name:"West Finchley")
west_ham = Station.create(name:"West Ham")
west_hampstead = Station.create(name:"West Hampstead")
west_harrow = Station.create(name:"West Harrow")
west_kensington = Station.create(name:"West Kensington")
west_ruislip = Station.create(name:"West Ruislip")
westbourne_park = Station.create(name:"Westbourne Park")
westminster = Station.create(name:"Westminster")
white_city = Station.create(name:"White City")
whitechapel = Station.create(name:"Whitechapel")
willesden_green = Station.create(name:"Willesden Green")
willesden_junction = Station.create(name:"Willesden Junction")
wimbledon = Station.create(name:"Wimbledon")
wimbledon_park = Station.create(name:"Wimbledon Park")
wood_green = Station.create(name:"Wood Green")
wood_lane = Station.create(name:"Wood Lane")
woodford = Station.create(name:"Woodford")
woodside_park = Station.create(name:"Woodside Park")

post1.stations = [bank]
post2.stations = [holborn]
post3.stations = [oxford_circus, liverpool_street]
post4.stations = [elephant_castle]
post5.stations = [camden_town, oxford_circus]
post6.stations = [oxford_circus]
post7.stations = [aldgate]
post8.stations = [covent_garden]
post9.stations = [liverpool_street, tottenham_court_road]

bakerloo_line = Line.create(name: "Bakerloo Line")
central_line = Line.create(name: "Central Line")
circle_line = Line.create(name: "Circle Line")
district_line = Line.create(name: "District")
hammersmith_city_line = Line.create(name: "Hammersmith & City Line")
jubilee_line = Line.create(name: "Jubilee Line")
metropolitan_line = Line.create(name: "Metropolitan Line")
northern_line = Line.create(name: "Northern Line")
piccadilly_line = Line.create(name: "Central Line")
victoria_line = Line.create(name: "Victoria Line")
waterloo_city_line = Line.create(name: "Waterloo & City Line")


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