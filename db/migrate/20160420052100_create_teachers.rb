class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      # t.has_many :students      # Caused migration error
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
