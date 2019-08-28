class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.belongs_to :camp

      t.timestamps null: false
    end
  end
end
