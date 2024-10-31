class AddReserveNameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :reserve_name, :string
  end
end
