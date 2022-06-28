class User < ApplicationRecord
  belongs_to :account

  validate :valid_email?

  def valid_email?
    return if account&.email.present?

    errors.add(:account, :invalid_email)
  end
end
