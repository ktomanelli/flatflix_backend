class RemoveVideoGenreIdFromVideos < ActiveRecord::Migration[6.0]
  def change
    remove_column :videos, :video_genre_id
  end
end
