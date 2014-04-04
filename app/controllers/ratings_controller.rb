class RatingsController < ApplicationController
  def create
    @beer = Beer.find_by(:slug => params[:slug])
    @rating = Rating.new(params[:rating])
    if @rating.save
      @beer.ratings << @rating
      @beer.save_score
      flash[:notice] = "Rating added!"
      redirect_to beer_path(@beer.slug)
    else
      render 'beers/show.html.erb'
    end
  end

end
