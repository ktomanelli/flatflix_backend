class User < ApplicationRecord
    validates_uniqueness_of :username
    has_secure_password
    has_many :user_videos
    has_many :videos, through: :user_videos
end
