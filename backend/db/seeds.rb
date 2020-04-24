
Destination.destroy_all
Follow.destroy_all
Trail.destroy_all
Trip.destroy_all
User.destroy_all

Philip = User.create(name: "Philip", email: 'philip@planetexpress.com', password: "123", profile_picture: "https://avatars3.githubusercontent.com/u/7104822?s=460&u=4c216cc65279ba46e09c56749057471cba8457c4&v=4")

Bender = User.create(name: "Bender", email: 'bender@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/4/43/Bender.png/revision/latest?cb=20150206072725")

Amy = User.create(name: "Amy", email: 'amy@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/9/94/AmyWong.png/revision/latest?cb=20170123190854" )

Leela = User.create(name: "Leela", email: 'leela@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/d/d4/Turanga_Leela.png/revision/latest?cb=20150218013044")

Farnsworth = User.create(name: "Farnsworth", email: 'farnsworth@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/4/4e/Farnsworth.png/revision/latest?cb=20110710094500")

Hermes = User.create(name: "Hermes", email: 'hermes@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/0/0d/Hermes.png/revision/latest?cb=20170719011119")

Zoidberg = User.create(name: "Zoidberg", email: 'zoidberg@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/4/45/Dr._John_A._Zoidberg.png/revision/latest?cb=20101014052403")

Zapp = User.create(name: "Zapp", email: 'zapp@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/e/e9/Zapp_Brannigan.png/revision/latest?cb=20101013084300")

Kif = User.create(name: "Kif", email: 'kif@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/8/82/Lieutenant_Kif_Kroker.png/revision/latest?cb=20101013084718")

Calculon = User.create(name: "Calculon", email: 'calculon@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/b/b3/Calculon-2.JPG/revision/latest/scale-to-width-down/700?cb=20090604015557")

Slurms = User.create(name: "Slurms", email: 'slurms@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/8/80/Slurm-1-.jpg/revision/latest?cb=20060626052801")

Nibbler = User.create(name: "Nibbler", email: 'nibbler@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/2/26/Lord_Nibbler.png/revision/latest?cb=20101013083936")

Donbot = User.create(name: "Donbot", email: 'donbot@planetexpress.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/1/13/Donbot.jpg/revision/latest?cb=20080112205318")


f1 = Follow.create(followed_user: Bender, user: Donbot)
f2 = Follow.create(followed_user: Donbot, user: Bender)
f3 = Follow.create(followed_user: Kif, user: Amy)
f4 = Follow.create(followed_user: Amy , user: Kif)
f5 = Follow.create(followed_user: Slurms , user: Nibbler)
f6 = Follow.create(followed_user: Nibbler , user: Slurms)
f7 = Follow.create(followed_user: Calculon, user: Zapp)
f8 = Follow.create(followed_user: Zapp, user: Calculon)
f9 = Follow.create(followed_user: Hermes, user: Zoidberg)
f10 = Follow.create(followed_user: Zoidberg, user: Hermes)
f11 = Follow.create(followed_user: Farnsworth, user: Leela)
f12 = Follow.create(followed_user: Leela, user: Farnsworth)
f13 = Follow.create(followed_user: Bender, user: Philip)
f14 = Follow.create(followed_user: Philip, user: Bender)




img1 = "https://cdn-files.apstatic.com/hike/7023297_smallMed_1554844842.jpg"
img2 = "https://cdn-files.apstatic.com/hike/7015863_smallMed_1554826913.jpg"
img3 = "https://cdn-files.apstatic.com/hike/7025994_smallMed_1554913295.jpg"
img4 = "https://cdn-files.apstatic.com/hike/7039883_smallMed_1555092747.jpg"
img5 = "https://cdn-files.apstatic.com/hike/7059495_smallMed_1560691891.jpg"
img6 = "https://cdn-files.apstatic.com/hike/7032144_smallMed_1554932569.jpg"
img7 = "https://cdn-files.apstatic.com/hike/7043231_smallMed_1555107854.jpg"
img8 = "https://cdn-files.apstatic.com/hike/7024143_smallMed_1554846342.jpg"


img_arr = [img1, img2, img3, img4, img5, img6, img7]

trail1 = Trail.create(
    api_index: 7021422,
    name: "East Palisades Route", 
    summary: "A lovely hike including sweeping views of the Chattahoochee and a hidden gem - a bamboo forest!",   
    difficulty: "greenBlue",
    stars: 4.4,
    url: "https://www.hikingproject.com/trail/7021422/east-palisades-route",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7023297_smallMed_1554844842.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7023297_smallMed_1554844842.jpg",
    location: "Vinings, Georgia",
    length: 4.2,
    longitude: -84.442,
    latitude: 33.8784
)

trail2 = Trail.create(
    api_index: 7045614, 
    name: "Beltline Eastside Trail: Piedmont Park to Krog Street Market", 
    summary: "A 5-mile romp through some of Atlanta's best spots for both green spaces and urban culture.",   
    difficulty: "green",
    stars: 4.5,
    url: "https://www.hikingproject.com/trail/7045614/beltline-eastside-trail-piedmont-park-to-krog-street-market",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7047531_smallMed_1555537277.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7047531_medium_1555537277.jpg",
    location: "Druid Hills, Georgia",
    length: 6.2,
    longitude: -84.3685,
    latitude: 33.7819
)

trail3 = Trail.create(
    api_index: 7004226, 
    name: "Sunshine Lions Lair Loop", 
    summary: "Great Mount Sanitas views are the reward for this gentler loop in Sunshine Canyon.",   
    difficulty: "blue",
    stars: 4.5,
    url: "https://www.hikingproject.com/trail/7004226/sunshine-lions-lair-loop",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7039883_smallMed_1555092747.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7039883_medium_1555092747.jpg",
    location: "Boulder, Colorado",
    length: 5.3,
    longitude: -105.2979,
    latitude: 40.02
)

trail4 = Trail.create(
    api_index: 7014350, 
    name: "Charlies Bunion Out and Back", 
    summary: "A trail from Newfound Gap to Charlie's Bunion along the Appalachian Trail (AT).",   
    difficulty: "blue",
    stars: 4.7,
    url: "https://www.hikingproject.com/trail/7014350/charlies-bunion-out-and-back",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7011319_smallMed_1554400402.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7011319_medium_1554400402.jpg",
    location: "Gatlinburg, Tennessee",
    length: 8,
    longitude: -83.425,
    latitude: 35.6109
)

trail5 = Trail.create(
    api_index: 7015700, 
    name: "Mt. Cammerer from Low Gap", 
    summary: "A wooded trail with a 360-degree view payoff on top of the mountain.",   
    difficulty: "blueBlack",
    stars: 4.7,
    url: "https://www.hikingproject.com/trail/7015700/mt-cammerer-from-low-gap",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7014429_smallMed_1554824285.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7014429_medium_1554824285.jpg",
    location: "Newport, Tennessee",
    length: 10.8,
    longitude: -83.2049,
    latitude: 35.752
)

trail6 = Trail.create(
    api_index: 7011192, 
    name: "Boulder Skyline Traverse", 
    summary: "The classic long mountain route in Boulder.",   
    difficulty: "black",
    stars: 4.7,
    url: "https://www.hikingproject.com/trail/7011192/boulder-skyline-traverse",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7048859_smallMed_1555540136.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7048859_medium_1555540136.jpg",
    location: "Superior, Colorado",
    length: 16.3,
    longitude: -105.2582,
    latitude: 39.9388
)

25.times do
    Trip.create(
      user_id: User.all.sample.id,
      title: User.all.sample.name + "'s Hiking Trip",
      description: Faker::Quote.yoda,
      location: (Faker::Address.city + ", " + Faker::Address.state),
      stars: rand(1..5),
      image: img_arr.sample
    )
end


100.times do 
    Destination.create(
        trail_name: Trail.all.sample.name,
        trek: Trip.all.sample
    )
end
