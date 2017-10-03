class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :fontawesome
      t.string :header
      t.text :content
      t.string :keypoints, array: true, default: []

      t.timestamps
    end
  end
end
