class Artist < ActiveRecord::Base
	attr_accessible :name, :member_id

	has_many :members
	has_many :bands, :through => :members
end