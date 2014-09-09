class Job < ActiveRecord::Base

  LEVELS         = %w{Entry\ Level Junior Intermediate Senior PM}
  POSITION_TYPES = %W{Full\ Time Part\ Time Apprentice Intern}

  searchkick
  paginates_per 10

  belongs_to :company

  validate :title, :location, :email, :remote_potential, :experience_level,
    :position_type, presence: true

end
