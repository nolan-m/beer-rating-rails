class WelcomeController < ApplicationController
  def index
    @beers = Beer.all
    @regions = Region.all
    @types = Type.all
    @featured = Beer.all.shuffle.first
  end
end
