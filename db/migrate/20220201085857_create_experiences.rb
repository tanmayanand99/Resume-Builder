class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.date :start
      t.date :end
      t.string :job_title
      t.string :description
      t.belongs_to :profile, index: true, foreign_key: true
      t.timestamps
    end
  end
end
