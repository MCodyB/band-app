class AddBandTable < ActiveRecord::Migration
  def change
		create_table :bands do |t|
			t.timestamps
			t.string :name
		end
	end
end
