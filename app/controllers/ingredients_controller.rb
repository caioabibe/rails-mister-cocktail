class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredients_path
  end

  def show
    @ingredient = ingredient.find(params[:id])
  end

  def destroy
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
