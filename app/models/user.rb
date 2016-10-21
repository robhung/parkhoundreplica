class User < ApplicationRecord

  ######################### References #########################

  has_many :spaces, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :bookings, dependent: :destroy

  ######################### Validation #########################

  validates :first_name, :last_name, presence: true

  ######################### Carrierwave #########################

  mount_uploader :avatar, AvatarUploader

  ######################### Devise #########################

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]


  ######################### OmniAuth Facebook #########################

  def self.from_omniauth(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.avatar = auth.info.image
    end

  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        user.first_name = data["first_name"] if user.first_name.blank?
        user.last_name = data["last_name"] if user.last_name.blank?
        user.provider = "facebook" if user.provider.blank?
        user.uid = data["id"] if user.uid.blank?
      end
    end
  end

end
