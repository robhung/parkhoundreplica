class Booking < ApplicationRecord

  ######################### References #########################

  belongs_to :user
  belongs_to :space

  
end
