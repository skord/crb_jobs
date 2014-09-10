Job.delete_all

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur augue eget tortor mattis tincidunt. Sed facilisis diam eu ante vestibulum, eu commodo nibh pretium. Nullam placerat, eros eleifend tempus mollis, nisl mi laoreet mi, eu hendrerit nibh est et nisl. Vivamus sit amet gravida nunc. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at faucibus nisl, sed dapibus purus. Nunc lacus enim, vulputate quis tortor non, vehicula faucibus leo. Sed rhoncus a ligula at aliquam. Fusce ultrices consectetur lorem, non semper tellus faucibus id.
Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec luctus vehicula nulla. Aenean vel lacus iaculis, suscipit magna at, vehicula sem. Pellentesque at efficitur purus, ac venenatis arcu. Nullam turpis felis, euismod vitae est eget, sagittis laoreet sem. Aenean at nulla metus. Morbi euismod mollis elit a mollis. Nulla et neque accumsan, vulputate mauris vitae, tincidunt est. Donec auctor nisl ut mi facilisis euismod. Cras commodo vestibulum porttitor. Ut non congue metus. Morbi ac nisl euismod, tristique massa non, sagittis massa. In at auctor velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In in justo ac erat molestie interdum.
Curabitur eget sagittis tellus, in posuere nulla. Integer semper ipsum non augue semper luctus. Integer semper ligula ipsum, eu scelerisque nibh maximus sit amet. Morbi elementum sapien nunc, eu iaculis libero mollis a. Pellentesque a malesuada dolor. Nunc malesuada orci id nisi egestas feugiat. Quisque diam nunc, volutpat nec purus in, scelerisque hendrerit arcu. In ut ipsum suscipit, porta tellus in, pulvinar nisl. Quisque felis orci, varius id est quis, blandit rutrum nulla. Nulla rhoncus gravida ultrices."

150.times do |x|
  Job.create({
    description: lorem,
    email: "some_contact_@company_#{x}.com",
    experience_level: Job::LEVELS.sample,
    is_open: true,
    location: "Somewhere, OH",
    position_type: Job::POSITION_TYPES.sample,
    remote_potential: [true, false].sample,
    title: "Job #{x}",
    company_name: "Company #{x}",
    company_url: "http://asdf.com"
  })
end

Job.reindex

50.times do |x|
  Candidate.create({
    first_name: "Joe_#{x}",
    last_name: "Schmoe_#{x}",
    email: "joe@schmoe_#{x}.com",
    about_me: lorem,
    experience_level: Job::LEVELS.sample,
    github_name: "schmoe_#{x}",
    twitter_name: "@joe#{x}",
    looking_for: lorem
  })
end
