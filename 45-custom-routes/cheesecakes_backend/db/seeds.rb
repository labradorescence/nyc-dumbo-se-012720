randy = User.create(username: "Randy", password: "abc123")
nicky = User.create(username: "Nicky", password: "abc123")

burgers = [
    { name: "Good Burger",
      description: "What a Good Burger!",
      image: "https://assets.epicurious.com/photos/57c5c6d9cf9e9ad43de2d96e/master/pass/the-ultimate-hamburger.jpg",
      price: rand(100)
    },
    { name: "Sal's Burger",
      description: "Burger of Sal's!",
      image: "http://cdn-image.myrecipes.com/sites/default/files/styles/medium_2x/public/umami-bomb-burgers-ck.jpg",
      price: rand(100)
    },
    { name: "Sloppy Beef",
      description: "Sloppimus Maximus",
      image: "https://www.budgetbytes.com/wp-content/uploads/2011/06/Sloppy-Joes-Plus-sandwich.jpg",
      price: rand(100)
    },
    { name: "Glamburger",
      description: "Bling Bling Burger",
      image: "https://i.ytimg.com/vi/zrnHrX_NCbY/hqdefault.jpg",
      price: rand(100)
    },
    { name: "Burgér",
      description: "Burgér fróm Fránce",
      image: "https://assets3.thrillist.com/v1/image/937699/size/tmg-article_default_mobile.jpg",
      price: rand(100)
    },
    { name: "Le Magnifique",
      description: "C'est la magnifique!",
      image: "https://wswd-wordpress-production.s3.amazonaws.com/content/uploads/2017/01/Delmonicos.jpg",
      price: rand(100)
    },
    { name: "HamBougie",
      description: "Not Bad, But Bougie",
      image: "https://townsquare.media/site/51/files/2018/04/ThinkstockPhotos-855832928.jpg",
      price: rand(100)
    },
    { name: "Green Eggs and Hamburger",
      description: "Cooked by Sam",
      image: "https://media.timeout.com/images/103334884/630/472/image.jpg",
      price: rand(100)
    },
    { name: "Veggie Burger",
      description: "Impossible Burger",
      image: "https://cookieandkate.com/images/2013/05/sweet-potato-black-bean-veggie-burgers-recipe-0.jpg",
      price: rand(100)
    },
    { name: "Spinach",
      description: "Ew.",
      image: "https://www.organicfacts.net/wp-content/uploads/spinach.jpg",
      price: rand(100)
    },
    { name: "Cow-abunga",
      description: "Mooooo",
      image: "http://www.foodwithfeelings.com/wp-content/uploads/2013/06/ab44_the-fat-cow-ramsay-gordon-6-e1352887255279.jpg",
      price: rand(100)
    }
  ]

Burger.create(burgers)

nicky_order = Order.create(user: nicky)

nicky_order.burgers << Burger.third
nicky_order.burgers << Burger.fourth
nicky_order.burgers << Burger.fifth

nicky_order2 = Order.create(user: nicky)

nicky_order2.burgers << Burger.all.sample
nicky_order2.burgers << Burger.all.sample
nicky_order2.burgers << Burger.all.sample
nicky_order2.burgers << Burger.all.sample

randy_order = Order.create(user: randy)

randy_order.burgers << Burger.all.sample
randy_order.burgers << Burger.all.sample
randy_order.burgers << Burger.all.sample
