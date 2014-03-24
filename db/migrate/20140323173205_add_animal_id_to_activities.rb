class AddAnimalIdToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :animal_id, :integer
  end
end
