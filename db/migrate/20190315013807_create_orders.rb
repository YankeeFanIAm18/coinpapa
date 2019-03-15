class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :ctrlid
      t.datetime :reqtime
      t.integer :currency
      t.decimal :value
      t.decimal :price
      t.integer :status
      t.string :detail

      t.timestamps
    end
  end
end
