class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, nill: false
      t.time :datetime, null: false
      t.string :image
      t.text :content
      t.string :tag
      t.timestamps
    end
  end
end
