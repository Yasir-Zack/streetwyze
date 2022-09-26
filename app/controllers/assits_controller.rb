# frozen_string_literal: true

# Assits Controller
class AssitsController < ApplicationController
  before_action :find_assit, only: %i[show edit update destroy]

  def index
    @assits = Assit.order('created_at DESC').page(params[:page])

    respond_to do |format|
      format.html
      format.csv { send_data @assits.to_csv }
    end
  end

  def new
    @assit = Assit.new
  end

  def create
    @assit = Assit.new(assit_params)

    if @assit.save
      redirect_to @assit
    else
      render 'new'
    end
  end

  def show; end

  def update
    if @assit.update(assit_params)
      
      redirect_to @assit
    else
      render 'edit'
    end
  end

  def edit; end

  def destroy
    @assit.destroy

    redirect_to @assit
  end

  def dash_board
    @result = PgSearch.multisearch(search_params.values).page(params[:page])
  end

  private

  def find_assit
    @assit = Assit.find(params[:id])
  end 

  def assit_params
    params.require(:assit).permit(:place, :address, :category, :story, :rating, :status, images: [])
  end

  def search_params
    params.permit(:place, :address, :category, :status, :rating)
  end
end
