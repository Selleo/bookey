class CreateBlockedDates < ActiveRecord::Migration[5.2]
  def change
    create_table :blocked_dates do |t|
      t.date :from, null: false
      t.date :to, null: false
      t.integer :reservation_ids, array: true, null: false
      t.references :apartment, foreign_key: true, null: false

      t.timestamps
    end
  end
end
