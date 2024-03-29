# frozen_string_literal: true

class AddUserIdToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurants, :user, foreign_key: true
  end
end
