class CreateTimecards < ActiveRecord::Migration[5.2]
  def change
    create_table :timecards do |t|
    	t.string "attendance"
      t.timestamps
    end
  end
end
