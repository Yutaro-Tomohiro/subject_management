class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :name, null: false
      t.integer :year, null: false
      t.integer :semester, null: false
      t.boolean :required, null: false

      t.timestamps
    end
  end
end
