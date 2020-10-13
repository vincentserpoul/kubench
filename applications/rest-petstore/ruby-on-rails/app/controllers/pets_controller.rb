class PetsController < ApplicationController
  # before_action :set_pet, only: [:show, :update]
  before_action :set_pet, only: [:update]

  def index
    render json: Pet.all
  end

  def show
    # render json: @pet
    render json: {
      id: nil,
      category: nil,
      name: 'Brickley',
      photo_urls: [],
      tags: nil,
      status: nil,
    }
  end

  def update
    if @pet.update(update_params)
      render json: @pet
    else
      render json: @pet.errors
    end
  end

  def create
    @pet = Pet.new(create_params)
    if @pet.save
      render json: @pet
    else
      render json: @pet.errors
    end
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def update_params
    params.require(:pet).permit(:name, :category_id, :photo_urls, :status)
  end

  def create_params
    params.require(:pet).permit(:name, :category_id, :photo_urls, :status)
  end
end