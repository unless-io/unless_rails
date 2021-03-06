class CreateVideoMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :video_media do |t|
      t.string :identifier
      t.references :section, foreign_key: true
      t.string :video_url

      t.timestamps
    end
  end
end
