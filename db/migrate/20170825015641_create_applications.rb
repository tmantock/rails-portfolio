class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :image
      t.text :thumbnail

      t.timestamps
    end
  end
end
