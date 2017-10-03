class CreateImageMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :image_media do |t|
      t.string :identifier
      t.references :section, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
