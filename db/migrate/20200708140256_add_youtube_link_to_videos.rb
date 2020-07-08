class AddYoutubeLinkToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :youtube_link, :string
  end
end
