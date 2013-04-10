class CreateIncertVideos < ActiveRecord::Migration
  def change
    create_table :incert_videos do |t|
      t.text :video_iframe

      t.timestamps
    end
  end
end
