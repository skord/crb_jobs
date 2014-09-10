class Notifier < ActionMailer::Base

  def job_posted(job_id)
    @job       = Job.find(job_id)
    @candidate = Candidate.find(candidate_id)
  end

end
