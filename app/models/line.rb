class Line < ApplicationRecord
  has_and_belongs_to_many :stations
  has_many :posts, -> { distinct }, through: :stations

  validates_presence_of :name, :station_ids

end
