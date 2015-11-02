class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :email
      t.text :description

      t.timestamps null: false
    end
  end
end
