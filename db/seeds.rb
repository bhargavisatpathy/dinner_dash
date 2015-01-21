class Seed
  def initialize
    build_items
    build_category
    build_orders
    build_users
  end

  def build_items
    item1 = Item.create(title: "Gut Buster", description: "If its in the store, it's in this burrito!", price: 1000, image:"burrito_360.png")
    item2 = Item.create(title: "Atomic Sunrise", description: "Spicy green chili, egg, and potatoe burrito.", price: 850, image:"burrito_360.png")
    item3 = Item.create(title: "Fiesta Especial", description: "A 6 foot party sized burrito to share with your family and friends.", price: 10000, image:"burrito_360.png")
    item4 = Item.create(title: "UF burritO", description: "Monthly special. It's out of this world.", price: 689, image:"burrito_360.png")
    item5 = Item.create(title: "Smothered Dynamite", description: "Classic pork green chili smothered burrito, your choice of fillings.", price: 899, image:"burrito_360.png")
    item6 = Item.create(title: "Two Torpedo Tacos", description: "Two crispy chicken tacos.", price: 500, image:"torpedo_tacos.png")
    item7 = Item.create(title: "Queso Quesadillas", description: "These delicious veggie dillas can be frisbeed to your door upon request.", price: 550, image:"quick_quesadillas.png")
    item8 = Item.create(title: "Death by Burrito", description: "That's no moon, that's a Beef Burrito smoothered in spicy green chili sauce!", price: 750, image:"death_by_burrito.png")
    item9 = Item.create(title: "Flaming Fajitas", description: "These veggie fajitas will set your mouth on fire.", price: 1200, image:"flaming_fajitas.png")
    item10 = Item.create(title: "Breakfast Quesadilla", description: "One deliscious egg, cheese, and potatoe dilla.", price: 650, image:"breakfast_dilla.png")
    item11 = Item.create(title: "Halo", description: "All fresh vegetables which gives you the moring shine", price: 500, image:"burrito_360.png")
    item12 = Item.create(title: "Vegi delight", description: "Eat all your vegies, tomatoes, red onions, green pepers, mushrooms and more)", price: 700, image:"burrito_360.png")
    item13 = Item.create(title: "Not too Sweet", description: "Just enough to satisfy for sweet quench, all sweet things", price: 500, image:"burrito_360.png")
    item14 = Item.create(title: "Classic", description: "Our same classic burrito with it's authentic flavors", price: 800, image:"burrito_360.png")
    item15 = Item.create(title: "Hot n Spicy", description: "All the hot and spicy things you can handle", price: 1000, image:"burrito_360.png")
    item16 = Item.create(title: "Tamale Torpedo", description: "These little tamale bombs come in one flavor: spicy!", price: 400, image:"burrito_360.png")
    item17 = Item.create(title: "Rice and Bombs", description: "Our slow-simmered black beans and cilantro-lime rice packaged up in individual parachute packs.", price: 300, image:"rice_bombs.png")
    item18 = Item.create(title: "Hot Sauce Bucket", description: "Just what it sounds like: a small bucket of our house hot sauce.", price: 300, image:"sauce_bucket.png")
    item19 = Item.create(title: "Chips and Salsa", description: "A bag of chips bubble wrapped for special delivery with a small bucket of our house hot sauce.", price: 400, image:"chips_salsa.png")
    item20 = Item.create(title: "Enola Empenada", description: "This empenada is filled with our famous mushroom salsa.", price: 500, image:"girl_from_empenada.png")
  end

  def build_category
    category1 = Category.create(name: "Vegetarian", description: "Meatless options.")
    category2 = Category.create(name: "Spicy", description: "Hot! Hot! Hot!")
    category3 = Category.create(name: "Specialty", description: "Chef's favorites.")
    category4 = Category.create(name: "Breakfast", description: "Start your day off right.")
    category5 = Category.create(name: "Sides", description: "&#192; la carte options.")
  end

  def orders
    order1 = Order.create(user_id: 1, status: "Ordered", total: 1500)
    order2 = Order.create(user_id: 2, status: "Ordered", total: 600)
    order3 = Order.create(user_id: 3, status: "Completed", total: 700)
    order4 = Order.create(user_id: 4, status: "Completed", total: 1100)
    order5 = Order.create(user_id: 6, status: "Paid", total: 2400)
    order6 = Order.create(user_id: 7, status: "Paid", total: 400)
    order7 = Order.create(user_id: 8, status: "Canceled", total: 1200)
    order8 = Order.create(user_id: 9, status: "Canceled", total: 2000)
    order9 = Order.create(user_id: 1, status: "Completed", total: 3200)
    order10 = Order.create(user_id: 2, status: "Completed", total: 1600)
  end

  def build_users
    user1 = User.create(fullname: "Johnny Bravo", email: "hooaa@gmail.com", display_name: "jbravo", password: "password", role: 0)
    user2 = User.create(fullname: "Rachel Warbelow", email: "demo+rachel@jumpstartlab.com", password: "password", role: 0)
    user3 = User.create(fullname: "Jeff Casmir", email: "demo+jeff@jumpstartlab.com", display_name: "j3", password: "password", role: 0)
    user4 = User.create(fullname: "Jeorge Tellez", email: "demo+jorge@jumpstartlab.com", display_name: "novohispano", password: "password", role: 0)
    user5 = User.create(fullname: "Josh Cheek", email: "demo+josh@jumpstartlab.com", display_name: "josh", password: "password", role: 1)
    user6 = User.create(fullname: "Steve Kinney", email: "demo+steve@jumpstartlab.com", display_name: "steveo", password: "password", role: 0)
    user7 = User.create(fullname: "Horace Williams", email: "demo+horace@jumpstartlab.com", display_name: "horace", password: "password", role: 0)
    user8 = User.create(fullname: "Raissa Shafer", email: "demo+raissa@jumpstartlab.com", password: "password", role: 0)
    user9 = User.create(fullname: "Josh Mejia", email: "demo+jmeija@jumpstartlab.com", display_name: "meija", password: "password", role: 0)
    user10 = User.create(fullname: "Joe Blow", email: "joe@gmail.com", display_name: "joe", password: "joe", role: 1)
  end
end
Seed.new
