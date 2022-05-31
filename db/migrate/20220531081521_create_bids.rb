class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.references :buyer
      t.float :bid_amount
      t.timestamp :bid_time
      t.references :auction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
