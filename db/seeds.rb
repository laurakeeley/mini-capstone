# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.new(name: "Succulent", price: 5, description: "Easy to care for.")

product.save

# product = Product.new(name: "philodendron", price: 10, description: "Vining plant.")