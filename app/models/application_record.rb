class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def formatted_date
    date_time.strftime("%a, %d %b %Y %l:%M %p") if !date_time.nil?
  end
end
