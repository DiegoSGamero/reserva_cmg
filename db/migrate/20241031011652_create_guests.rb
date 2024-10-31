class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :guest_name
      t.references :reservation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
