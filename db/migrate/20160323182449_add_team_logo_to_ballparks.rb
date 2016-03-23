class AddTeamLogoToBallparks < ActiveRecord::Migration
  def change
    add_column :ballparks, :team_logo, :string
  end
end
