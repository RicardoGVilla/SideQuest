class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :start_point
      t.string :end_point
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
