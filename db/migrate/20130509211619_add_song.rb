class AddSong < ActiveRecord::Migration
  def change
		create_table :songs do |t|
			t.timestamps
			t.string :name
		end
	end
end
