class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.belongs_to :student, index: true, foreign_key: true
      t.string :assignment_name
      t.date :assignment_date
      t.string :assignment_grade
      t.timestamps null: false
    end
  end
end
