class AddTrackTable < ActiveRecord::Migration
  def change
		create_table :tracks do |t|
			t.timestamp
			t.string :name
			t.time :duration
			t.boolean :bonus
			t.text :lyrics
		end
  end
end
