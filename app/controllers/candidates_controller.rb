class CandidatesController < InheritedResources::Base
  has_scope :page, default: 1

  def unsubscribe
    Candidate.where(token: params[:token]).first.update_attribute(:receive_updates, false)
  end

  private

  def permitted_params
    params.permit(candidate: [:first_name, :last_name, :email, :github_name, :twitter_name, :experience_level, :about_me, :looking_for, :receive_updates])
  end

end
