class Track < ActiveRecord::Base
	attr_accessible :name, :duration, :lyrics, :bonus

	validates :name, :bonus, :presence => true

	belongs_to :album
	has_one :band, :through => :album
end