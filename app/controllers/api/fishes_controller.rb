module Api
  class FishesController < ApiController
    def index
      @fishes = Fish.order(:name)
    end
  end
end

