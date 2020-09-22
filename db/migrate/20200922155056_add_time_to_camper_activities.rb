class AddTimeToCamperActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :camper_activities, :time, :integer
  end
end
