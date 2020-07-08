class RemoveYoutubeLinkFromVideos < ActiveRecord::Migration[6.0]
  def change
    remove_column :videos, :youtube_link

  end
end
