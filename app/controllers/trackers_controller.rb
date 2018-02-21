
class TrackersController < ApplicationController

  def tracking_info
      ActiveShipping::UPS.new(login: ENV["UPS_login_email"], password: ENV["UPS_login_password"], key: ENV["UPS_API"], account: ENV["UPS_Account"])
  end

  def index
    @packages = Tracker.all
    @ups = tracking_info
  end

  def new
    @package = Tracker.new
  end

  def create
    @ups = tracking_info
    @package = Tracker.create(tracking_number: params[:tracking_number])
    @package.save
    return_city = @ups.find_tracking_info(@package.tracking_number).params["Shipment"]["ShipTo"]["Address"]["City"]
    return_state = @ups.find_tracking_info(@package.tracking_number).params["Shipment"]["ShipTo"]["Address"]["StateProvinceCode"]
    @package.update(return_city: return_city, return_state: return_state) 
    @package.save
    redirect_to "/"
  end

  def show
    @ups = tracking_info
    @package = Tracker.find(params[:id])
  end

  def edit
    @package = Tracker.find(params[:id])
  end

  def update
    @package = Tracker.find(params[:id])
    @package.update(
                    tracking_number: params[:tracking_number],
                    return_city: params[:return_city],
                    return_state: params[:return_state]
                    )
  end

  def destroy
    @package = Tracker.find(params[:id])
    @package.destroy
    redirect_to '/'
  end

end
