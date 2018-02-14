class TrackersController < ApplicationController

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
