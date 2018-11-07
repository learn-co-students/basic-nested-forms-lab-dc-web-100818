class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    2.times { @recipe.ingredients.build }
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(recipe)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end


  private

  def recipe_params
    params.require(:recipe).permit(:id, :title, ingredients_attributes: [ :id, :name, :quantity ])
  end
end
