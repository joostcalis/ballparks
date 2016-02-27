class CreateBallparks < ActiveRecord::Migration
  def change
    create_table :ballparks do |t|
      t.string :name
      t.string :team
      t.string :city
      t.text :description
      t.string :image
      t.integer :average_rating

      t.timestamps null: false
    end
  end
end
