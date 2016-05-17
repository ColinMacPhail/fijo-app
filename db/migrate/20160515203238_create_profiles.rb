class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :address
      t.integer :number_of_children
      t.integer :age_of_children
      t.timestamps null: true
    end
  end
end
