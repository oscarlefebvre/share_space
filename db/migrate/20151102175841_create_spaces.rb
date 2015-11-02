class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :address
      t.boolean :availability
      t.integer :price_per_day
      t.integer :nb_of_pers
      t.text :description
      t.text :equipements
      t.string :type_of_space
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
