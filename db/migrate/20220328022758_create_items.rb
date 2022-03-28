class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :text, null:false
      t.integer :category_id, null:false
      t.integer :color_id, null:false
      t.string :maker
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end
