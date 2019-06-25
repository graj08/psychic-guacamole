class RidersController < ApplicationController

    def new
        @rider = Rider.new
        @rollercoasters = Rollercoaster.all
    end

    def show
        @rider = Rider.find(params[:id])
        @rollercoasters = Rollercoaster.all
    end

    def create
        @rider = Rider.create(rider_params)
        redirect_to rider_path(@rider)
    end

    private

    def rider_params
        params.require(:rider).permit(:name, rollercoaster_ids: [])
    end
end
