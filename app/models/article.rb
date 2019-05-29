class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :sport, inclusion: { in: SPORTS }
end
