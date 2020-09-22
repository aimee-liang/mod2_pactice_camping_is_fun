class Activity < ActiveRecord::Base
    has_many :camper_activities
    has_many :campers, through: :camper_activities
end
