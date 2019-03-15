class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :emailstatus
      t.integer :doctype
      t.integer :docstatus
      t.string :phonenumber
      t.string :passhash
      t.datetime :regtime

      t.timestamps
    end
  end
end
