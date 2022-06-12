# frozen_string_literal: true

class Service < OpenStruct
  def self.exec(*args, &)
    new(*args, &).exec
  end

  def attributes
    JSON.parse(to_json).deep_symbolize_keys
  end
end
