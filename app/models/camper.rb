class Camper < ActiveRecord::Base
    has_many :camper_activities
    has_many :activities, through: :camper_activities
    
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :age, numericality: true
    validates :age, numericality: {greater_than: 7, less_than: 19}

end
