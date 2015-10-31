class AddPictureToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :picture, :string
  end
end
