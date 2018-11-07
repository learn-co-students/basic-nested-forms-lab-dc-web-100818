class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients)
    new_ingredients = []

    ingredients.each do |id, ingr|
        ingr_to_add = Ingredient.find_or_create_by(name: ingr['name'])
        ingr_to_add.update(quantity: ingr['quantity'])
        new_ingredients << ingr_to_add
    end
    #byebug
    self.ingredients = new_ingredients
    self.update(ingredients: new_ingredients)
  end
end
