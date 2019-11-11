class ToiletsController < ApplicationController
  before_action :set_toilet, only: [:show, :edit, :update, :destroy]

  def index
    @toilets = Toilet.all
  end

  def show
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.save
    redirect_to toilet_path(@toilet)
  end

  def edit
  end

  def update
    @toilet.update(toilet_params)
  end

  def destroy
    @toilet.destroy
  end

  private

  def set_toilet
    @toilet = Toilet.find(params[:id])
  end

  def toilet_params
    params.require(:toilet).permit(:title, :description, :location)
  end
end
