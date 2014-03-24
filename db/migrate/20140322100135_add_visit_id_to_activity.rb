class AddVisitIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :visit_id, :integer
  end
end
