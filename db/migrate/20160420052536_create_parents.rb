class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.belongs_to :student, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
