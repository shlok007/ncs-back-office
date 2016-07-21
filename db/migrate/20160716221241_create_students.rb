class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.integer :year
      t.integer :contact_no, limit: 10
      t.string :admission_no

      t.timestamps
    end
  end
end
