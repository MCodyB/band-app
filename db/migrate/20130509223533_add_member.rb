class AddMember < ActiveRecord::Migration
  def create
		create_table :members do |t|
			t.timestamp
			t.integer :band_id
			t.integer :artist_id
		end
  end
end
