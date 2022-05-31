class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.references :item, null: false, foreign_key: true
      t.float :minimum_bid

      t.timestamps
    end
  end
end
