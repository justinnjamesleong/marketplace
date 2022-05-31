class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.references :franchise, null: false, foreign_key: true
      t.references :item_type, null: false, foreign_key: true
      t.references :creator
      t.references :owner

      t.timestamps
    end
  end
end
