class Band < ActiveRecord::Base
	attr_accessible :name, :member_id

	validates :name, :presence => true

	has_many :albums
	has_many :tracks, :through => :albums
	has_many :members
	has_many :artists, :through => :members
end