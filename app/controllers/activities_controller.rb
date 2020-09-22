class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.create(activity_params)

      if activity.valid?
        activity.save
        redirect_to activity_path(activity)
      else
        flash[:my_errors] = activity.errors.full_messages
        redirect_to new_activity_path
      end
  end

private

  def activity_params
    params.require(:activity).permit!
  end


end
