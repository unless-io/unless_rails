class CreateTextAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :text_areas do |t|
      t.string :identifier
      t.references :section, foreign_key: true
      t.text :text_introduction
      t.text :content

      t.timestamps
    end
  end
end
