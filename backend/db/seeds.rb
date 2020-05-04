Destination.destroy_all
Follow.destroy_all
Trail.destroy_all
Trip.destroy_all

User.destroy_all

Philip = User.create(name: "Philip", email: 'Philip@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/f/f2/PhilipJ.Fry.png/revision/latest?cb=20110916120042")

Leela = User.create(name: "Leela", email: 'Leela@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/d/d4/Turanga_Leela.png/revision/latest?cb=20150218013044")

Farnsworth = User.create(name: "Farnsworth", email: 'Farnsworth@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/4/4e/Farnsworth.png/revision/latest?cb=20110710094500")

Hermes = User.create(name: "Hermes", email: 'Hermes@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/0/0d/Hermes.png/revision/latest?cb=20170719011119")

Zoidberg = User.create(name: "Zoidberg", email: 'Zoidberg@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/4/45/Dr._John_A._Zoidberg.png/revision/latest?cb=20101014052403")

Scruffy = User.create(name: "Scruffy", email: 'Scruffy@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/1/10/Scruffy.png/revision/latest?cb=20170123190905")

Zapp = User.create(name: "Zapp", email: 'Zapp@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/e/e9/Zapp_Brannigan.png/revision/latest?cb=20101013084300")

Kif = User.create(name: "Kif", email: 'Kif@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/8/82/Lieutenant_Kif_Kroker.png/revision/latest?cb=20101013084718")

Nibbler = User.create(name: "Nibbler", email: 'Nibbler@gmail.com', password: "123", profile_picture: "https://vignette.wikia.nocookie.net/en.futurama/images/2/26/Lord_Nibbler.png/revision/latest?cb=20101013083936")

f1 = Follow.create(followed_user: Philip, user: Leela)
f2 = Follow.create(followed_user: Leela, user: Philip)
f3 = Follow.create(followed_user: Kif, user: Philip)
f4 = Follow.create(followed_user: Farnsworth , user: Philip)
f5 = Follow.create(followed_user: Hermes , user: Philip)
f6 = Follow.create(followed_user: Nibbler , user: Philip)
f7 = Follow.create(followed_user: Nibbler, user: Farnsworth)
f8 = Follow.create(followed_user: Philip, user: Farnsworth)
f9 = Follow.create(followed_user: Philip, user: Hermes)
f10 = Follow.create(followed_user: Philip, user: Zoidberg)
f11 = Follow.create(followed_user: Philip, user: Scruffy)
f12 = Follow.create(followed_user: Philip, user: Zapp)
f13 = Follow.create(followed_user: Zapp, user: Farnsworth)
f14 = Follow.create(followed_user: Kif, user: Farnsworth)
f15 = Follow.create(followed_user: Kif, user: Hermes)
f16 = Follow.create(followed_user: Kif, user: Zoidberg)
f17 = Follow.create(followed_user: Kif, user: Scruffy)



img1 = "https://cdn-files.apstatic.com/hike/7023297_smallMed_1554844842.jpg"
img2 = "https://cdn-files.apstatic.com/hike/7015863_smallMed_1554826913.jpg"
img3 = "https://cdn-files.apstatic.com/hike/7025994_smallMed_1554913295.jpg"
img4 = "https://cdn-files.apstatic.com/hike/7024143_smallMed_1554846342.jpg"
img5 = "https://cdn-files.apstatic.com/hike/7059495_smallMed_1560691891.jpg"
img6 = "https://cdn-files.apstatic.com/hike/7032144_smallMed_1554932569.jpg"
img7 = "https://cdn-files.apstatic.com/hike/7043231_smallMed_1555107854.jpg"
img8 = "https://cdn-files.apstatic.com/hike/7010203_smallMed_1554398018.jpg"
img9 = "https://cdn-files.apstatic.com/hike/7002724_smallMed_1554227142.jpg"

img_arr = [img1, img2, img3, img4, img5, img6, img7]

trail1 = Trail.create(
    api_index: 7000108,
    name: "Angels Landing", 
    summary: "One of the most memorable National Park hikes. Heavenly views await at the end of an exposed ridge.",   
    difficulty: "black",
    stars: 4.9,
    url: "https://www.hikingproject.com/trail/7000108/angels-landing",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7010203_smallMed_1554398018.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7010203_medium_1554398018.jpg",
    location: "Springdale, Utah",
    length: 4.4,
    longitude: -112.9507,
    latitude: 37.2594
)

trail2 = Trail.create(
    api_index: 7001635, 
    name: "Four Pass Loop", 
    summary: "An all-time journey over four 12,500' alpine passes, circumnavigating the Maroon Bells.",   
    difficulty: "green",
    stars: 4.5,
    url: "https://www.hikingproject.com/trail/7045614/beltline-eastside-trail-piedmont-park-to-krog-street-market",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7047531_smallMed_1555537277.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7047531_medium_1555537277.jpg",
    location: "Lincoln, New Hampshire",
    length: 6.2,
    longitude: -84.3685,
    latitude: 33.7819
)

trail3 = Trail.create(
    api_index: 7034642, 
    name: "Sope Creek", 
    summary: "Sope Creek has a few miles of gravel and some good, fun, singletrack in metro Atlanta.",   
    difficulty: "blue",
    stars: 4,
    url: "https://www.hikingproject.com/trail/7034642/sope-creek",
    imgSmallMed: "https://cdn-files.apstatic.com/hike/7003862_smallMed_1554235788.jpg",
    imgMedium: "https://cdn-files.apstatic.com/hike/7003862_medium_1554235788.jpg",
    location: "Vinings, Georgia",
    length: 8.8,
    longitude: -84.4455,
    latitude: 33.9042
)

trail4 = Trail.create(
    api_index: 7014350, 
    name: "Monarch Lake to Crater Lake", 
    summary: "Gorgeous scenery with waterfalls and wildflowers ending at a breathtaking cirque and glacier lake.",   
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
    location: "Newport, Virginia",
    length: 10.8,
    longitude: -83.2049,
    latitude: 35.752
)

25.times do
    user_randonm_id = User.all.sample.id
    user_random_name = User.find(user_randonm_id).name
    Trip.create(
      user_id: user_randonm_id,
      title: user_random_name + "'s Hiking Trip",
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
