class TracksController < ApplicationController

	def new
		@track = Track.new(:album_id => params[:album_id])
	end

	def create
		@track = Track.new(params[:track])
		if @track.save
			redirect_to album_path(@track.album)
		else
			render "new"
		end
	end

	def edit

	end

	def update

	end

end