class Artist < ActiveRecord::Base
	attr_accessible :name

	has_many :members
	has_many :bands, :through => :members
end