class CreateGuestReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :guest_reservations do |t|
      t.references :reservation, foreign_key: true, null: false
      t.references :guest, foreign_key: true, null: false
      t.references :apartment, foreign_key: true, null: false

      t.timestamps
    end
  end
end
