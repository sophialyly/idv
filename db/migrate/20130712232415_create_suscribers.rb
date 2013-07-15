class CreateSuscribers < ActiveRecord::Migration
  def change
    create_table :suscribers do |t|
      t.string :email
      t.text :name

      t.timestamps
    end
  end
end
