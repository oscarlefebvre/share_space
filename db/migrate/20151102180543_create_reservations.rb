class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :space, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.text :review
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
