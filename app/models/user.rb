class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :uservehicles , dependent: :destroy
    belongs_to :userrole
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,4})\z/i

	validates :name, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/,
    flash: "Only allows letters" }
	has_attached_file :image, :styles => { :small => "90x90>" ,:thumb => "30x30>"},
                            :default_url => 'default.jpg'
                    
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
