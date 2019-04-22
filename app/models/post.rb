class Post < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_one :review, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :comment, presence: true
end
