# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Recipes

pizza = Recipe.new(title: "Pizza")
apple_pie = Recipe.new(title: "Apple Pie")

#Ingredients

dough = Ingredient.new(name: "pizza dough", quantity: "some", recipe_id: pizza.id)
cheese = Ingredient.new(name: "mozzarella", quantity: "a lot", recipe_id: pizza.id)
sugar = Ingredient.new(name: "sugar", quantity: "2 cups", recipe_id: apple_pie.id)
apples = Ingredient.new(name: "apples", quantity: "6 or 7", recipe_id: apple_pie.id)
