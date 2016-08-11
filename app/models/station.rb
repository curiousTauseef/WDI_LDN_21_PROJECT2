class Station < ApplicationRecord
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :lines
  has_many :users, -> { distinct }, through: :posts

  validates_presence_of :name, :line_ids

end
