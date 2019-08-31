class RecipesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
   @recipes = Recipe.all
   puts "in index method"
   SearchrecipeController.new.searchbyingredient
   # also need to add code to show API index
   # returns array of objects {[]}
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def searchwine
    SearchrecipeController.new.searchwinepairing
  end

  def new
    @recipe = Recipe.new
  end

  def create
    current_user.recipes.create(recipe_params)
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :directions)
  end

  #works for all search functions?
  #def query
    #params.fetch(:query, {})
  #end

end
