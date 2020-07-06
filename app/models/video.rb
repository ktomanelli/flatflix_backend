class Video < ApplicationRecord
    has_many :video_genres
    has_many :user_videos
    has_many :genres, through: :video_genres
    has_many :users, through: :user_videos
end
