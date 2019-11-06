class FavouritesController < ApplicationController
  def show
    @favourite = Favourite.find params [:id]
  end
end
