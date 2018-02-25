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

  def tracking_info
      ActiveShipping::UPS.new(login: ENV["UPS_login_email"], password: ENV["UPS_login_password"], key: ENV["UPS_API"], account: ENV["UPS_Account"])
  end
end
