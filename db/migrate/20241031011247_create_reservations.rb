class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.string :details

      t.timestamps
    end
  end
end
