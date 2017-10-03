class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :header
      t.string :subheader
      t.text :introduction
      t.date :publishing_date
      t.string :medium_link
      t.references :user, foreign_key: true
      t.string :picture

      t.timestamps
    end
  end
end
