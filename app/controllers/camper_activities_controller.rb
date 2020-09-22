class CamperActivitiesController < ApplicationController
    
    def index
        @camper_activities = CamperActivity.all
    end

    def new
        @camper_activity = CamperActivity.new
    end

    def create
        camper_activities = CamperActivity.create(camper_activities_params)
        redirect_to camper_path(camper_activities.camper)
    end

private

    def camper_activities_params
        params.require(:camper_activity).permit(:camper_id, :activity_id, :time)
    end

end