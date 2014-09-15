require "rails_helper"

feature "Posting a Job" do

  scenario "should work" do
    visit new_job_path
    fill_in :job_title, with: "Some Title"
    fill_in :job_location, with: "Some Location"
    fill_in :job_company_name, with: "Some Company"
    fill_in :job_url, with: "http://google.com"
    fill_in :job_email, with: "asdf@asdf.com"
    select "Senior", from: :job_experience_level
    select "Full", from: :job_position_type
    fill_in :job_description, with: "Something interesting"
    click_button "Create Job"
    expect(current_url).to eq(job_url(Job.last))
  end

end
