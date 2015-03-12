class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :region
      t.string :price
      t.string :item_url
      t.string :style

      t.timestamps null: false
    end
  end
end
