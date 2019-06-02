# frozen_string_literal: true

class AddProviderToUsers < ActiveRecord::Migration[6.0]
  def self.up
    change_table :users do |t|
      t.string :provider, null: false, default: ""
      t.string :uid, null: false, default: ""
    end

    add_index :users, :name,                 unique: true
    add_index :users, [:uid, :provider], unique: true
  end
end
