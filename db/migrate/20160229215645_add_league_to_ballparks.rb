class AddLeagueToBallparks < ActiveRecord::Migration
  def change
    add_column :ballparks, :league, :string
  end
end
