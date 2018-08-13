class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.date :checkin_date, null: false
      t.date :checkout_date, null: false
      t.string :uid, null: false

      t.timestamps
    end
  end
end
