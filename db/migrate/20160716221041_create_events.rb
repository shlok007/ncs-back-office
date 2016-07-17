class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start_time
      t.timestamp :end_time
      t.timestamp :display_start_time
      t.timestamp :display_end_time
      t.string :description
      t.string :contact_info
      t.string :venue

      t.timestamps
    end
  end
end
