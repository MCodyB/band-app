class Track < ActiveRecord::Base
	attr_accessible :duration, :lyrics, :bonus, :album_id, :song_id

	validates :album_id, :presence => true

	belongs_to :album
	belongs_to :song
	has_one :band, :through => :album
end