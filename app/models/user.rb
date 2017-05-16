class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,:omniauth_providers => [:facebook]
    has_many :uservehicles , dependent: :destroy
    belongs_to :userrole
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,4})\z/i

	validates :name, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/,
    flash: "Only allows letters" }
	has_attached_file :image, :styles => { :small => "90x90>" ,:thumb => "30x30>"},
                            :default_url => 'default.jpg'
                    
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

  def self.from_omniauth(auth)

  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.name = auth.info.name
    user.email = auth.info.email
    user.image = auth.info.image
  user.save!

  end
end

def self.new_with_session(params, session)
  if session["devise.user_attributes"]
    new(session["devise.user_attributes"], without_protection: true) do |user|
      user.attributes = params
      user.valid?
    end
  else
    super
  end
end
def password_required?
  super && provider.blank?
end
  
end
