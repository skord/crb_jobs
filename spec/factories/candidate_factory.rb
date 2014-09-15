FactoryGirl.define do

  factory :candidate do
    first_name "Joe_0"
    last_name "Schmoe_0"
    email "joe@schmoe_0.com"
    about_me "lorem"
    experience_level Job::LEVELS.sample
    github_name "schmoe_0"
    twitter_name "@joe0"
    looking_for "lorem"
  end

end
