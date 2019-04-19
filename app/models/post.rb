class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_one :review
  has_many :comments
  validates :comment, presence: true
end
