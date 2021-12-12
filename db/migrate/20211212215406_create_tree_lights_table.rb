class CreateTreeLightsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :tree_lights do |t|
      t.integer :tree_id
      t.integer :light_ids
    end
  end
end
