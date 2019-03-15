json.extract! order, :id, :user_id, :ctrlid, :reqtime, :currency, :value, :price, :status, :detail, :created_at, :updated_at
json.url order_url(order, format: :json)
