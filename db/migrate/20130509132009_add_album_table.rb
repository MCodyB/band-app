class AddAlbumTable < ActiveRecord::Migration
  def change
		create_table :albums do |t|
			t.timestamp
			t.string :name
		end
  end
end
