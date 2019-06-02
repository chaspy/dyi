class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :url
      t.text :detail

      t.timestamps
    end
  end
end
