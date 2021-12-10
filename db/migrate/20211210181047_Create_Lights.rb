class CreateLights < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :color
      t.string :style
    end
  end
end
