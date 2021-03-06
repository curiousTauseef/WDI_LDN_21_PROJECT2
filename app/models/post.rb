class Post < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :stations

  validates_presence_of :title, :body, :date_time, :station_ids

  def formatted_date
    date_time.strftime("%a, %d %b %Y %l:%M %p") if !date_time.nil?
  end
end
