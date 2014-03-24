class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.float :price
      t.string :animal_specie

      t.timestamps
    end
  end
end
