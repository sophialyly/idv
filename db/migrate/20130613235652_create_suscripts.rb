class CreateSuscripts < ActiveRecord::Migration
  def change
    create_table :suscripts do |t|
      t.integer :user_id
      t.string :suscription_type

      t.timestamps
    end
  end
end
