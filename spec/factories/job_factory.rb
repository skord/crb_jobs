FactoryGirl.define do
  factory :job do
    description "lorem"
    email "some_contact_@company_0.com"
    experience_level Job::LEVELS.sample
    is_open true
    location "Somewhere, OH"
    position_type Job::POSITION_TYPES.sample
    remote_potential [true, false].sample
    title "Job 0"
    company_name "Company 0"
    url "asdf.com"
  end
end
