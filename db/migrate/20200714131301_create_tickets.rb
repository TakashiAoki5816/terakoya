class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :user
      t.references :event, null: false
      t.timestamps
    end
    add_index :tickets, [:user_id, :event_id], unique: true
  end
end
