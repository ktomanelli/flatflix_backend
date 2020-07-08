class AddColumnYoutubeToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :youtube, :string
  end
end
