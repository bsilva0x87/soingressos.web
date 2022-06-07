module Statusable
  extend ActiveSupport::Concern

  included do
    enum status: self::STATUS_OPTIONS
  end

  def status=(value)
    self[:status] = value
  rescue ArgumentError
    self.errors.add(:status, :invalid)
  end
end