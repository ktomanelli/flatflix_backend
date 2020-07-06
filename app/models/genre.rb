class Genre < ApplicationRecord
    has_many :video_genres
    has_many :videos, through: :video_genres
end
