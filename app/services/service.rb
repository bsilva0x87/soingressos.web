# frozen_string_literal: true

class Service
  def self.exec(*args, &)
    new(*args, &).call
  end

  def attributes
    JSON.parse(to_json).deep_symbolize_keys
  end
end
