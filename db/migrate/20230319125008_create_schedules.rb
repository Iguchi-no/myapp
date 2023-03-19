class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :place
      t.date :date
      t.time :start_time
      t.time :end_time
      t.text :memo
      t.string :owner_id

      t.timestamps
    end
  end
end
