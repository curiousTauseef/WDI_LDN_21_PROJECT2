class Line < ApplicationRecord
  has_and_belongs_to_many :stations
  has_many :posts, -> { distinct }, through: :stations
end
