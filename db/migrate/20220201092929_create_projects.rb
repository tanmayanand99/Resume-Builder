class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start
      t.date :end
      t.string :description
      t.belongs_to :experience, index: true, foreign_key: true
      t.timestamps
    end
  end
end
