class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.references :event, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
