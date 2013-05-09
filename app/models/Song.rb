class Song < ActiveRecord::Base
	attr_accessible :name

	has_many :tracks
	has_many :albums, :through => :tracks
end