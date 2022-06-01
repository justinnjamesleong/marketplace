json.extract! auction, :id, :start_time, :end_time, :item_id, :minimum_bid, :created_at, :updated_at
json.url auction_url(auction, format: :json)
