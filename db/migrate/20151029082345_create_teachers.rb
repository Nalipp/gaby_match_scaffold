class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string  :teacher_email
      t.string  :password
      t.string  :name
      t.string  :skill_1
      t.string  :skill_2
      t.string  :skill_3
      t.text    :description
      t.integer :price
      t.string  :availability

      t.timestamps null: false
    end
  end
end
