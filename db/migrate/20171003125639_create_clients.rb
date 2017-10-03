class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :country
      t.string :city
      t.string :street
      t.string :logo_url
      t.string :website_url
      t.boolean :partner

      t.timestamps
    end
  end
end
