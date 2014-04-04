class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(params[:beer])
    if @beer.save
      flash[:notice] = "Beer added!"
      redirect_to beers_path
    else
      render 'new'
    end
  end

  def show
    @beer = Beer.find_by(:slug => params[:id])
  end

  def edit
    @beer = Beer.find_by(:slug => params[:id])
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
