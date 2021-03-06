class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
    @types = Type.order(:name)
    @breweries = Brewery.order(:name)
  end

  def create
    params[:beer][:total_rating] = 0
    @beer = Beer.new(params[:beer])
    if @beer.save
      redirect_to beers_path, notice: "Beer added."
    else
      render 'new'
    end
  end

  def show
    @beer = Beer.find_by(:slug => params[:id])
    @rating = Rating.new
  end

  def edit
    @beer = Beer.find_by(:slug => params[:id])
    @types = Type.order(:name)
    @breweries = Brewery.order(:name)
  end

  def update
    @beer = Beer.find_by(:slug => params[:id])
    if @beer.update(params[:beer])
      flash[:notice] = "Beer updated!"
      redirect_to beer_path(@beer.slug)
    else
      render 'edit'
    end
  end

  def destroy
    @beer = Beer.find_by(:slug => params[:id])
    @beer.destroy
    redirect_to beers_path
  end

end
