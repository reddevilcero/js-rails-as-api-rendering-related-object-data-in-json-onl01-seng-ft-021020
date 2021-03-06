class Bird < ApplicationRecord
  has_many :sightings, dependent: :destroy
  has_many :locations, through: :sightings, source: :sightings_table_foreign_key_to_locations_table
end