class CreateDocuentFiles < ActiveRecord::Migration
  def change
    create_table :docuent_files do |t|
      t.string :title
      t.text :description
      t.string :image_file
      t.string :documents

      t.timestamps
    end
  end
end
