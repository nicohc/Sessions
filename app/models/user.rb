class User < ApplicationRecord

  validates :name, presence: true,
                   format: { with: /\A[a-zA-Z0-9_]*\z/ }
                   #RegExp du format Username

  EMAIL = /\A([\w\!\#\z\%\&\'\*\+\-\/\=\?\\A\`{\|\}\~]+\.)*[\w\+-]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)\z/i 

  validates :email, presence: true,
                    format: { with: EMAIL }
                    #RegExp du format Username

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end
