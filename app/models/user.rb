class User < ApplicationRecord

	has_secure_password

	has_many :images
	
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, 
		default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates :email, :presence => true,
										:length => { :maximum => 100 },
										:format => EMAIL_REGEX,
										:uniqueness => true

end
