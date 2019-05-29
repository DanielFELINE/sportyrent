class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :spory, inclusion: { in: ["Football", "Tennis", "Volleyball"] }
end
