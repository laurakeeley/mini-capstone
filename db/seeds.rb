Supplier.create!([
  {name: "Bixby Flowers", email: "bixby@gmail.com", phone_number: "555-6666"},
  {name: "Growing Gardens", email: "growinggardens@gmail.com", phone_number: "888-9999"},
  {name: "Bixby Flowers", email: "bixby@gmail.com", phone_number: "555-6666"},
  {name: "Growing Gardens", email: "growinggardens@gmail.com", phone_number: "888-9999"}
])
Product.create!([
  {name: "Succulent", price: "5.0", description: "Easy to care for.", inventory: nil, supplier_id: nil},
  {name: "philodendron", price: "10.0", description: "Vining plant.", inventory: nil, supplier_id: nil},
  {name: "Spider Plant", price: "6.0", description: "Creates spider babies", inventory: nil, supplier_id: nil},
  {name: "Monstera", price: "45.0", description: "large split leaves", inventory: nil, supplier_id: nil},
  {name: "Fiddle Leaf Fig", price: "75.0", image_url: nil, description: "always dies", inventory: nil, supplier_id: nil},
  {name: "Succulent", price: "5.0", description: "Easy to care for.", inventory: nil, supplier_id: 2},
  {name: "philodendron", price: "10.0", description: "Vining plant.", inventory: nil, supplier_id: 1},
  {name: "Spider Plant", price: "6.0", description: "Creates spider babies", inventory: nil, supplier_id: 2},
  {name: "Monstera", price: "45.0", description: "large split leaves", inventory: nil, supplier_id: nil},
  {name: "Fiddle Leaf Fig", price: "75.0", image_url: nil, description: "always dies", inventory: nil, supplier_id: 1}
])

image = Image.new(
  url: "https://images.pexels.com/photos/1207978/pexels-photo-1207978.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  product_id: 6
)
image.save

image = Image.new(
  url: "https://images.pexels.com/photos/1284879/pexels-photo-1284879.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  product_id: 6
)
image.save

image = Image.new(
  url: "https://images.pexels.com/photos/796620/pexels-photo-796620.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  product_id: 6
)
image.save

image = Image.new(
  url: "https://images.pexels.com/photos/4567805/pexels-photo-4567805.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  product_id: 7
)
image.save

image = Image.new(
  url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.thespruce.com%2Fthmb%2FoxE3VdaeQdrW8GT6ZEsQvpdVhNQ%3D%2F2000x2000%2Fsmart%2Ffilters%3Ano_upscale()%2Fspider-plants-chlorophytum-definition-1902773-02-4fc579ee1b874f4ca148482782d163b6.jpg&imgrefurl=https%3A%2F%2Fwww.thespruce.com%2Fspider-plants-chlorophytum-definition-1902773&tbnid=y8461j7phNNKIM&vet=12ahUKEwjZyp-It-HyAhXNi60KHb_MDfYQMygHegUIARDXAg..i&docid=KIh-9clRPAaiKM&w=2000&h=2000&q=spider%20plant&ved=2ahUKEwjZyp-It-HyAhXNi60KHb_MDfYQMygHegUIARDXAg",
  product_id: 8
)
image.save

image = Image.new(
  url: "https://images.pexels.com/photos/7084309/pexels-photo-7084309.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  product_id: 10
)
image.save

Category.create!([
  {name: "Easy"},
  {name: "Can Propogate"},
  {name: "Flowering"}
])

ProductCategory.create!([
  {product_id: 6, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 8, category_id: 1},
  {product_id: 11, category_id: 1},
  {product_id: 6, category_id: 2},
  {product_id: 7, category_id: 2},
  {product_id: 8, category_id: 2},
  {product_id: 6, category_id: 3},
  {product_id: 11, category_id: 3},
])

CartedProduct.create!([
  {user_id: 2, product_id: 6, quantity: 1, status: "carted"},
  {user_id: 2, product_id: 10, quantity: 1, status: "carted"},
  {user_id: 2, product_id: 11, quantity: 2, status: "carted"},
  {user_id: 3, product_id: 10, quantity: 1, status: "carted"},
  {user_id: 3, product_id: 7, quantity: 3, status: "carted"},
  {user_id: 3, product_id: 6, quantity: 2, status: "carted"}
])