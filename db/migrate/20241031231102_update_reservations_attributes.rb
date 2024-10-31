class UpdateReservationsAttributes < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :date, :datetime
    add_column :reservations, :date_only, :date
    add_column :reservations, :time_only, :time
    add_column :reservations, :reservation_type, :string
  end
end
