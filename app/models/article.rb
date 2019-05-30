class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :sport, inclusion: { in: SPORTS }

  include PgSearch
  pg_search_scope :global_search,
    against: [ :sport, :name ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
