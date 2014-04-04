class RatingsController < ApplicationController
  def create
    @beer = Beer.find_by(:slug => params[:slug])
    @rating = @beer.ratings.new(params[:rating])
    if @rating.save
      flash[:notice] = "Rating added!"
      redirect_to beer_path(@beer.slug)
    else
      render 'beers/show.html.erb'
    end
  end

end
