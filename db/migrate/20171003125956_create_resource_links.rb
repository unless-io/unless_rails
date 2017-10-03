class CreateResourceLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :resource_links do |t|
      t.string :identifier
      t.references :section, foreign_key: true
      t.string :display_text
      t.string :website_url
      t.string :fontawesome

      t.timestamps
    end
  end
end
