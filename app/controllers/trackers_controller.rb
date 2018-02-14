
class TrackersController < ApplicationController

  def info
    ups = ActiveShipping::UPS.new(login: ENV["UPS_login_email"], password: ENV["UPS_login_password"], key: ENV["UPS_API"], account: ENV["UPS_Account"])
    tracking_info = ups.find_tracking_info('tracking-number', carrier_code: 'ups_ground') # Ground package

    tracking_info.shipment_events.each do |event|
      puts "#{event.name} at #{event.location.city}, #{event.location.state} on #{event.time}. #{event.message}"
    end
  end

  def index
    @packages = Tracker.all
  end

  def new
    @package = Tracker.new
  end

  def create
    @@package = Tracker.create(
                               tracking_number: params[:tracking_number],
                               name: params[:name],
                               street: params[:street],
                               city: params[:city],
                               state: params[:state],
                               zip: params[:zip]
                               )
  end

  def show
    @package = Tracker.find(params[:id])
  end

  def edit
    @package = Tracker.find(params[:id])
  end

  def update
    @package = Tracker.find(params[:id])
    @package.update(
                    tracking_number: params[:tracking_number],
                    name: params[:name],
                    street: params[:street],
                    city: params[:city],
                    state: params[:state],
                    zip: params[:zip]
                    )
  end

  def delete
    @package = Tracker.find(params[:id])
    @package.destroy
  end

end
