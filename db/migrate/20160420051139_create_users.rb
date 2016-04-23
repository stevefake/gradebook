class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.belongs_to :teacher, index: true, foreign_key: true
      t.belongs_to :student, index: true, foreign_key: true
      t.belongs_to :parent, index: true, foreign_key: true
      # t.string :first_name
      # t.string :last_name
      # t.string :email
      t.string :role
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
