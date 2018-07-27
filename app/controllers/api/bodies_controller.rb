module Api
  class BodiesController < ApiController
    def index
      @bodies = Body.order(:name)
    end
  end
end

