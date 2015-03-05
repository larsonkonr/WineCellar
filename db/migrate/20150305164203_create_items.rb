class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :region
      t.string :price

      t.timestamps null: false
    end
  end
end
