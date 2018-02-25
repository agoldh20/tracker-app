class Tracker < ApplicationRecord

  def return_address
    "#{return_city}, #{return_state}"
  end

  def current_address
    "#{current_city}, #{current_state}"
  end

  def geo
    "latitude: #{latitude}, longitude: #{longitude}"
  end

end
