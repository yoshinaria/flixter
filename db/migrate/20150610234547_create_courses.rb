class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.decimal :cost
      t.references :user

      t.timestamps
    end
  end
end
