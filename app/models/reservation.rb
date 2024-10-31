class Reservation < ApplicationRecord
  enum reservation_type: { comum: "comum", aniversario: "aniversario", camarote: "camarote" }

  # Validações (opcional)
  validates :reserve_name, presence: true
  validates :date_only, presence: true
  validates :time_only, presence: true
  validates :reservation_type, inclusion: { in: reservation_types.keys }
end
