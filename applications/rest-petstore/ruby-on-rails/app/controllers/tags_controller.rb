class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :update]

  def index
    render json: Tag.all
  end

  def show
    render json: @tag
  end

  def update
    if @tag.update(update_params)
      render json: @tag
    else
      render json: @tag.errors
    end
  end

  def create
    @tag = Tag.new(create_params)
    if @tag.save
      render json: @tag
    else
      render json: @tag.errors
    end
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def update_params
    params.require(:tag).permit(:name)
  end

  def create_params
    params.require(:tag).permit(:name)
  end
end