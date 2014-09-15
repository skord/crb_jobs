class Notifier < ActionMailer::Base
  helper :application
  default from: "crbjobs@gmail.com", content_type: "text/plain"

  def job_posted(info)
    @job       = Job.find(info[:job_id])
    @candidate = Candidate.find(info[:candidate_id])
    mail(to: @candidate.email, subject: 'New CRB Job Posted!')
  end

end
