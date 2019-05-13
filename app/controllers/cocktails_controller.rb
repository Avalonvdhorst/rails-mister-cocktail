class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new(set_params)
  end

  def create
    @cocktail = Cocktail.new(set_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(set_params)
    if @cocktail.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def set_params
    params.require(:cocktail).permit(:name)
  end
end
