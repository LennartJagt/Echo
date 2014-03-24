class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :specie
      t.string :owner_last_name

      t.timestamps
    end
  end
end
