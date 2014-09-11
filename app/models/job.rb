class Job < ActiveRecord::Base

  searchkick
  paginates_per 10

  LEVELS         = %w{Entry\ Level Junior Intermediate Senior PM}
  POSITION_TYPES = %W{Full\ Time Part\ Time Apprentice Intern}

  after_commit :send_emails

  default_scope { where( is_open: true ) }

  validate :title, :location, :email, :remote_potential, :experience_level,
    :position_type, presence: true

  def should_index?
    is_open
  end

  private

  def send_emails
    Candidate.emailable.each do |c|
      Notifier.delay.job_posted(candidate_id: c.id, job_id: self.id)
    end
  end

end
