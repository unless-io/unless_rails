class CreateHeaders < ActiveRecord::Migration[5.0]
  def change
    create_table :headers do |t|
      t.string :identifier
      t.references :section, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
