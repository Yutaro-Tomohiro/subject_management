class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name, null: false
      t.text :description
      t.references :subject
      t.datetime :expire_at

      t.timestamps
    end
  end
end
