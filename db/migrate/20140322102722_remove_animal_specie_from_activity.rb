class RemoveAnimalSpecieFromActivity < ActiveRecord::Migration
  def up
    remove_column :activities, :animal_specie
  end

  def down
    add_column :activities, :animal_specie, :string
  end
end
