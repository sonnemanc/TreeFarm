class CreateOrnaments < ActiveRecord::Migration[6.1]
  def change
    create_table :ornaments do |t|
      t.string :shape
      t.string :size
      t.float :price
    end
  end
end
