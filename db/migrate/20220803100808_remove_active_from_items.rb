# frozen_string_literal: true

class RemoveActiveFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :active, :integer
  end
end
