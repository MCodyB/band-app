class Track < ActiveRecord::Base
	attr_accessible :duration, :lyrics, :bonus, :album_id

	validates :bonus, :album_id, :presence => true

	belongs_to :album
	has_one :band, :through => :album
end