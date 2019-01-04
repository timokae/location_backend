# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.decimal  :longitude
      t.decimal  :latitude
      t.integer  :measured_at
      t.integer  :strategy, default: 0
      t.string   :name

      t.timestamps
    end
  end
end
