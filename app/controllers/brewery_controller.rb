class BreweriesController < ApplicationController

	def index
		@breweries = Brewery.all
	end

	def new
		@brewery = Brewery.new
	end

	def create
		@brewery = Brewery.new(brewery_params)
		if @brewery.save
			redirect_to breweries_path, notice: "Brewery saved."
		else
			render 'new'
		end
	end

	def show
		@brewery = Brewery.find_by(:slug => params[:id])
	end

	def edit
		@brewery = Brewery.find_by(:slug => params[:id])
	end

	def update
		@brewery = Brewery.find_by(:slug => params[:id])
		@brewery.update(params[:brewery])
		if @brewery.save
			redirect_to brewery_path(@brewery, notice: "Brewery updated."
		else
			render 'edit'
		end
	end

	def destroy
		@brewery = Brewery.find_by(:slug => params[:id])
		@brewery.destroy
		redirect_to breweries_path
	end
end