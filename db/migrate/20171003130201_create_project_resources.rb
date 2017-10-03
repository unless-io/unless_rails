class CreateProjectResources < ActiveRecord::Migration[5.0]
  def change
    create_table :project_resources do |t|
      t.string :website_url
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
