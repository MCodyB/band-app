class AlbumsController < ApplicationController
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



end