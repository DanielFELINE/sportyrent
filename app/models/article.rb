class Article < ApplicationRecord
  belongs_to :user
  after_initialize :default_values
  mount_uploader :photo, PhotoUploader
  validates :sport, inclusion: { in: SPORTS }
  has_many :bookings, dependent: :destroy

  include PgSearch
  pg_search_scope :global_search,
    against: [ :sport, :name ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }

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

