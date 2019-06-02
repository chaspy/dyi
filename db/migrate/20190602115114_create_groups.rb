class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.integer :event_id
      t.text :note

      t.timestamps
    end
  end
end
