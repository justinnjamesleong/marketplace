class UpdateRoleClass < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :role, :decimal
    add_column :users, :role, :string
  end
end
