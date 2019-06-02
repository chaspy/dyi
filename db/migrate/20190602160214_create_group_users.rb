class CreateGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_users do |t|
      t.references :group, null: false, foreign_key: true
      t.references :user

      t.timestamps
    end
  end
end
