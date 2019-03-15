json.extract! user, :id, :firstname, :lastname, :email, :emailstatus, :doctype, :docstatus, :phonenumber, :passhash, :regtime, :created_at, :updated_at
json.url user_url(user, format: :json)
