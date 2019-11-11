class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :event_date
      t.string :time
      t.string :location
      t.string :event
      t.integer :group_id

      t.timestamps
    end
  end
end
