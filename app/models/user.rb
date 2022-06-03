# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :confirmable,
         :lockable,
         :timeoutable,
         :trackable,
         :registerable,
         :recoverable,
         :rememberable,
         :database_authenticatable, authentication_keys: [:username]

  validates :first_name, :last_name, presence: true, length: { in: (2..128) }

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :username, presence: true, format: { with: EMAIL_REGEX }
  validates :password, presence: true, length: { in: (6..32) }

  # Associations
  has_many :roles, class_name: 'UserRole'

end
