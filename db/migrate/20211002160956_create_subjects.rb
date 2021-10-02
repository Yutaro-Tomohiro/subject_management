class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :name, null: false
      t.integer :yaer, null: false
      t.string :semester, null: false
      t.boolean :required, null: false

      t.timestamps
    end
  end
end
