class SubstancesController < ApplicationController
  before_action :find_substance, only: %i[show]
  def index
  end

  def new
    @substance = Substance.new
  end

  def create
    @substance = Substance.new(substance_params)
    if @substance.save
      redirect_to @substance
    else 
      render 'new'
    end
  end
  
  def show
  end 

  private
  def find_substance
    @substance = Substance.find(params[:id])
  end  
   
  def substance_params
    params.require(:substance).permit(:place, :address)
  end
end
