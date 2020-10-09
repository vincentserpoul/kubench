class Api::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update]

  def index
    render json: Category.all
  end

  def show
    render json: @category
  end

  def update
    if @category.update(update_params)
      render json: @category
    else
      render json: @category.errors
    end
  end

  def create
    @category = Category.new(create_params)
    if @category.save
      render json: @category
    else
      render json: @category.errors
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def update_params
    params.require(:category).permit(:name)
  end

  def create_params
    params.require(:category).permit(:name)
  end
end