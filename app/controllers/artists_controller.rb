class ArtistsController < ApplicationController

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(params[:artist])
		if @artist.save
			redirect_to artist_url(@artist.id)
		else
			render "new"
		end
	end

end