class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.integer :student_id
      t.integer :event_id

      t.timestamps
    end
  end
end
