class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.datetime :logtime
      t.integer :user_id
      t.integer :level
      t.string :message

      t.timestamps
    end
  end
end
