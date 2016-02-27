class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :concession
      t.integer :extra_activity_rating
      t.integer :overall_rating
      t.integer :general_experience
      t.references :ballpark, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
