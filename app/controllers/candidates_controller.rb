class CandidatesController < InheritedResources::Base
  has_scope :page, default: 1

  def unsubscribe
    Candidate.where(token: params[:token]).first.update_attribute(:receive_updates, false)
  end

end
