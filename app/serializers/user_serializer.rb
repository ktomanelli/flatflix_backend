class UserSerializer < ActiveModel::Serializer
    attributes :id, :username,:first_name,:last_name
    has_many :user_videos

end