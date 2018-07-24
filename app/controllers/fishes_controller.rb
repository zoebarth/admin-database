class FishesController < ApplicationController
  def index
    @fishes = Fish.order(:name)
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish= Fish.new(fish_params)
    if @fish.save
      redirect_to fish_path(@fish), notice: "Fish was successfully created."
    else
      render :new
    end
  end

  def show 
    set_fish
  end

  def update
    set_fish
    if @fish.update(fish_params)
      redirect_to fish_path(@fish), notice: "Fish was successfully updated."
    else
      render :edit
    end
  end

  def edit
    set_fish
  end

  private 
  def set_fish
    @fish = Fish.find(params[:id])
  end

  def fish_params
    params.fetch(:fish, {}).permit(:name, :description, :fish_image)
  end
end
