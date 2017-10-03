class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
