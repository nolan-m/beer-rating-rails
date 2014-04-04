class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(params[:type])
    if @type.save
      flash[:notice] = "Type added!"
      redirect_to types_path
    else
      render 'new'
    end
  end

  def show
    @type = Type.find_by(:slug => params[:id])
  end

  def edit
    @type = Type.find_by(:slug => params[:id])
  end

  def update
    @type = Type.find_by(:slug => params[:id])
    if @type.update(params[:type])
      flash[:notice] = "Type updated!"
      redirect_to type_path(@type.slug)
    else
      render 'edit'
    end
  end

  def destroy
    @type = Type.find_by(:slug => params[:id])
    @type.destroy
    redirect_to types_path
  end

end
