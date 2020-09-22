class CamperActivity < ActiveRecord::Base
    belongs_to :camper
    belongs_to :activity
    
end