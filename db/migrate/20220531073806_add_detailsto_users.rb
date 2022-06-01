class AddDetailstoUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :role, :decimal
    add_column :users, :credit, :integer, default: 0
  end
end
