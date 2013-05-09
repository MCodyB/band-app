class AddArtist < ActiveRecord::Migration
  def change
		create_table :artists do |t|
			t.timestamps
			t.string :name
			t.integer :member_id
		end
	end
end
