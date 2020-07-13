class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.datetime :datetime, null: false
      t.string :image
      t.text :content
      t.string :tag
      t.timestamps
    end
  end
end
