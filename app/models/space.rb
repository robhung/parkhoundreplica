class Space < ApplicationRecord

  ######################### References #########################

  belongs_to :user
  has_many :bookings, dependent: :destroy

  ######################### Validation #########################

  validates :title, :description, :street, :suburb, :state, :postcode, :country, :space_type, :maximum_entrance_height, :type_of_access, :largest_vehicle, :price, presence: true

  ######################### Carrierwave #########################

  mount_uploaders :photos, PhotosUploader

  ######################### Geocode #########################

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [street, suburb, state, postcode, country].compact.join(', ')
  end

  ######################### Search #########################

  def self.search(search)
    where("suburb LIKE ?", "%#{search}%")
  end

end
