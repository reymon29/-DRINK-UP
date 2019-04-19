class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  belongs_to :review
  has_many :comments
  validates :comment, presence: true
end
