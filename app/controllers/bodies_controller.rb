class BodiesController < ApplicationController
  def index
    @bodies = Body.order(:name)
  end

  def new
    @body = Body.new
  end

  def create
    @body = Body.new(body_params)
    if @body.save
      redirect_to body_path(@body), notice: "Body of water was successfully created"
    else
      render :new
    end
  end

  def show
    set_body
  end

  private
  def set_body
    @body = Body.find(params[:id])
  end

  def body_params
    params.fetch(:body, {}).permit(:name, :latitude, :longitude, :description)
  end

end