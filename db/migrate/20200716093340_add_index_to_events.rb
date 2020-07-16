class AddIndexToEvents < ActiveRecord::Migration[6.0]
  def change
    add_index :events, :title, length: 32
  end
end
