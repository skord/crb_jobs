require "rails_helper"

describe Candidate do

  let(:candidate){ FactoryGirl.create(:candidate) }

  it "is valid" do
    expect(candidate.valid?).to eq(true)
  end

  it "sanitizes the twitter_name" do
    expect(candidate.twitter_name).to eq("joe0")
  end

  it "has a token" do
    expect(candidate.token).to_not be_nil
  end

end
