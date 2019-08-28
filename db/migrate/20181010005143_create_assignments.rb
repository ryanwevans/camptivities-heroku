class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :rating
      t.boolean :filled, default: false
      t.belongs_to :camp_counselor
      t.belongs_to :activity

      t.timestamps null: false
    end
  end
end
