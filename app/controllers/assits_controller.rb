class AssitsController < ApplicationController
  def index
    @assit = Assit.new

    @assits = Assit.all.order('created_at DESC')
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

  def show
    @assit = Assit.find(params[:id])
  end

  def update
    @assit = Assit.find(params[:id])
    if @assit.update(assit_params)
      redirect_to @assit
    else
      render 'edit'
    end
  end

  def edit
    @assit = assit.find(params[:id])
  end

  def destroy
    @assit = assit.find(params[:id])
    @assit.destroy
    redirect_to assit_path
  end

  private

  def assit_params
    params.permit(:place, :address, :category, :story, :rating, :status, images: [])
  end
end
