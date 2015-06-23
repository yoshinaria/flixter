class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :subtitle

      t.references :section
      t.timestamps
    end
  end
end
