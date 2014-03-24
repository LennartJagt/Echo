class AdVisitIdToAnimals < ActiveRecord::Migration
  def up
    add_column :animals, :visit_id, :integer
  end

  def down
    remove_column :animals, :visit_id
  end
end
