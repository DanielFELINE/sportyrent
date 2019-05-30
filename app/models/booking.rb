class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :article
  after_initialize :default_values

  private

  def default_values
    self.status ||= false
  end
end
