class WelcomeController < ApplicationController
  def index
    @beers = Beer.all
    @regions = Region.all
    @types = Type.all
    @featured = Beer.all.shuffle.first
    @top_five = (Beer.all.sort_by {|b| b.total_rating.to_f }).reverse[0...5]
  end
end
