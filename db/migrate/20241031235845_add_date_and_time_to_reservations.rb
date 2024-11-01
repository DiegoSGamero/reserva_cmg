class AddDateAndTimeToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :date_only, :date
    add_column :reservations, :time_only, :time
  end
end
