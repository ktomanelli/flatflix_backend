class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.integer :year
      t.string :rating
      t.string :runtime
      t.string :released
      t.string :director
      t.integer :video_genre_id
      t.string  :poster_url
      t.string :plot
      t.string :imdb_rating
      
      t.timestamps
    end
  end
end
