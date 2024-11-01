class Guest < ApplicationRecord
  belongs_to :reservation
  attr_accessor :guests_names
end
