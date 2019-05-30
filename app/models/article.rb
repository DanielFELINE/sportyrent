class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :sport, inclusion: { in: SPORTS }
  geocoded_by :address 
  after_validation :geocode
  
  def address
    self.user.address
  end
end

