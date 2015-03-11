class CreateCellars < ActiveRecord::Migration
  def change
    create_table :cellars do |t|
      t.string :title
      t.string :description
      t.string :region
      t.string :price
      t.string :category

      t.timestamps null: false
    end
  end
end
