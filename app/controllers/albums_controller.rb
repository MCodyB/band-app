class AlbumsController < ApplicationController

	def show
		@album = Album.find(params[:id])
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(params[:album])
		@album.band_id = params[:band_id]
		if @album.save
			redirect_to band_path(@album.band)
		else
			render "new"
		end
	end

	def edit
		@album = Album.find(params[:id])
		@band = @album.band
	end

	def update
		@album = Album.find(params[:id])
		@album.update_attributes(params[:album])

		redirect_to band_path(@album.band)
	end



end