json.extract! item, :id, :name, :description, :creator, :owner, :franchise_id, :itemtype_id, :created_at, :updated_at
json.url item_url(item, format: :json)
