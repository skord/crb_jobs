class Notifier < ActionMailer::Base
  helper :application
  default from: "crbjobs@gmail.com", content_type: "text/html"

  def job_posted(job_id)
    @job       = Job.find(job_id)
    @candidate = Candidate.find(candidate_id)
  end

end
