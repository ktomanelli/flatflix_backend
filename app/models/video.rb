class Video < ApplicationRecord
    has_many :video_genres
    has_many :genres, through: :video_genres
end
