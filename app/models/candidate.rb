class Candidate < ActiveRecord::Base

  before_create :generate_token!

  scope :emailable, -> { where( receive_updates: true ) }

  def name
    "#{first_name} #{last_name}"
  end

  private

  def generate_token!
    self.token = SecureRandom.uuid
  end

end
