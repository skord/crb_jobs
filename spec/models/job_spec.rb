require "rails_helper"

describe Job do

  let(:job){ FactoryGirl.create(:job) }

  it "is valid" do
    expect(job.valid?).to eq(true)
  end

  it "sanitizes the url" do
    expect(job.url).to eq("http://asdf.com")
  end

end
