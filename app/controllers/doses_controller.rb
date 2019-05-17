class DosesController < ApplicationController
  def index
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def show
    @dose = Dose.find(params[:cocktail_id])
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    # iterer sur le tableau
    # chercher l'ingrdient
    # creer la dose
    # on associe la dose a l'ingredient
    # on associe la dose au cocktail
    # end
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_doses_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find_dose
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
