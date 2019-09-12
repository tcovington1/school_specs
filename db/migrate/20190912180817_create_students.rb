class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.float :gpa, default: 0.0, null: false
      t.integer :student_number, default: 0, null: false
      t.belongs_to :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
