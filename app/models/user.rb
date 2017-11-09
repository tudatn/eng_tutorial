class User < ActiveRecord::Base
    has_secure_password
    has_many :documents
    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates_format_of :email, :with => EMAIL_REGEX

end
