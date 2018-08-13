class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :name, null: false
      t.string :uid, null: false
      t.references :hotel, foreign_key: true, null: false
      t.references :parent_apartment, foreign_key: { to_table: :apartments }

      t.timestamps
    end
  end
end
