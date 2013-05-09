class ChangeMember < ActiveRecord::Migration
  def change
		create_table :members do |t|
			t.timestamp
			t.integer :band_id
			t.integer :artist_id
		end
  end
end
