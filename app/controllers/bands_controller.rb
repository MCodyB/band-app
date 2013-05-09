class BandsController < ApplicationController
	def index
		@bands = Band.all
	end

	def new
		@band = Band.new
	end

	def create
		@band = Band.new(params[:band])
		if @band.save
			redirect_to bands_url
		else
			render "new"
		end
	end

	def show
		@band = Band.find(params[:id])
		@album = Album.new
		@album.band_id = @band.id
	end

	def destroy
		Band.find(params[:id]).destroy
		redirect_to bands_url
	end

	def edit
		@band = Band.find(params[:id])
	end

	def update
		@band = Band.find(params[:id])
		@band.update_attributes(params[:band])

		redirect_to band_path(@band)
	end
end