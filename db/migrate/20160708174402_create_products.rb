class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :url
      t.string :image_url
      t.timestamps
    end
  end
end
