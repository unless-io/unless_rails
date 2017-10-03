class CreateProjectImages < ActiveRecord::Migration[5.0]
  def change
    create_table :project_images do |t|
      t.references :project, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
