class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :club, :string
    add_column :users, :year, :integer
    add_column :users, :linkedin, :string
    add_column :users, :github, :string
    add_column :users, :admission_no, :string
    add_column :users, :contact_no, :integer
  end
end
