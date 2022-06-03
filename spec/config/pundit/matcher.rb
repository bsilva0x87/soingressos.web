# frozen_string_literal: true

RSpec::Matchers.define :permit do |action|
  match do |policy|
    policy.public_send("#{action}?")
  end

  failure_message do |policy|
    matcher_message(policy:, action:)
  end

  failure_message_when_negated do |policy|
    matcher_message(policy:, action:, word: 'forbid')
  end
end

def matcher_message(policy:, action:, word: 'permit')
  record = policy.record
  object = policy.user

  %(#{policy.class} does not #{word} #{action} on #{record} for #{object}.)
end
