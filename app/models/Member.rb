class Member < ActiveRecord::Base
	attr_accessible :band_id, :artist_id

	has_one :artist_id
	has_one :band_id
end