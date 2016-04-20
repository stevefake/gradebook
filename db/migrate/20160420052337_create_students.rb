class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.belongs_to :teacher, index: true, foreign_key: true
      # t.has_many :parents
      # t.has_many :grades
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
