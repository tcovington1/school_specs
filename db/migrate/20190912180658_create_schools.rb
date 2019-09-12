class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :principal, null: false
      t.integer :capacity, default: 0, null: false
      t.boolean :private_school, default: true, null: false

      t.timestamps
    end
  end
end
