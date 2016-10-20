class Space < ApplicationRecord
  belongs_to :user

  validates :title, :description, :street, :suburb, :state, :postcode, :country, presence: true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [street, suburb, state, postcode, country].compact.join(', ')
  end

  def self.search(search)
    where("suburb LIKE ?", "%#{search}%")
  end

end
