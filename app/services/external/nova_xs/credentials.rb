# frozen_string_literal: true

module External
  module NovaXs
    class Credentials
      # Provides a full validation framework to object.
      include ActiveModel::Validations

      attr_accessor :login, :password, :token

      # Validations
      validates :login, presence: true, length: { in: (8..64) }
      validates :password, presence: true, length: { in: (6..72) }
      validates :token, presence: true, length: { minimum: 40 }

      def initialize(login: '', password: '', token: '')
        @login = login
        @password = password
        @token = token
      end
    end
  end
end
