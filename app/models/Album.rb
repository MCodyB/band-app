class Album < ActiveRecord::Base
	attr_accessible :name

	validates :name, :presence => true

	has_many :tracks
	has_many :songs, :through => :tracks
	belongs_to :band
end