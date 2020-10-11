class CreateTimecard0s < ActiveRecord::Migration[5.2]
  def change
    create_table :timecard0s do |t|
    	t.string "attendance"
      t.timestamps
    end
  end
end
