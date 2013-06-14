class CreateSpecialRequests < ActiveRecord::Migration
  def change
    create_table :special_requests do |t|
      t.text :request_i
      t.integer :user_id

      t.timestamps
    end
  end
end
