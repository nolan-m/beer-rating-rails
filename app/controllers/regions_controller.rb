class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(params[:region])
    if @region.save
      redirect_to regions_path, notice: "Region added."
    else
      render 'new'
    end
  end

  def show
    @region = Region.find_by(:slug => params[:id])
  end

  def edit
    @region = Region.find_by(:slug => params[:id])
  end

  def update
    @region = Region.find_by(:slug => params[:id])
    if @region.update(params[:region])
      redirect_to region_path(@region.slug), notice: "Region updated."
    else
      render 'edit'
    end
  end

  def destroy
    @region = Region.find_by(:slug => params[:id])
    @region.destroy
    redirect_to regions_path
  end

end
