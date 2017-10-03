class CreateBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :benefits do |t|
      t.references :service, foreign_key: true
      t.string :fontawesome
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
