class User < ApplicationRecord

	has_secure_password

	has_many :images

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

	validates :email, :presence => true,
										:length => { :maximum => 100 },
										:format => EMAIL_REGEX,
										:uniqueness => true

end
