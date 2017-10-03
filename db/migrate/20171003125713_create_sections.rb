class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.references :page, foreign_key: true
      t.string :identifier

      t.timestamps
    end
  end
end
