class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.string :uid, null: false

      t.timestamps
    end
  end
end
