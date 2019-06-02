class CreateEventUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :event_users do |t|
      t.references :event, null: false, foreign_key: true
      t.referebces :user

      t.timestamps
    end
  end
end
