class Article < ApplicationRecord
  belongs_to :user
  after_initialize :default_values
  mount_uploader :photo, PhotoUploader
  validates :sport, inclusion: { in: SPORTS }
  geocoded_by :address 
  after_validation :geocode
  
  def address
    self.user.address
  end

  private

  def default_values
    self.dispo ||= false
  end
end

