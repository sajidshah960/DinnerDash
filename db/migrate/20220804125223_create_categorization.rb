# frozen_string_literal: true

class CreateCategorization < ActiveRecord::Migration[5.2]
  def change
    create_table :categorizations do |t|
      t.references :category, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
