class RmvDateAndTimeOnly < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :date_only, :date
    remove_column :reservations, :time_only, :time
  end
end
