class JobsController < InheritedResources::Base
  has_scope :page, default: 1

  def search
    @jobs = Job.search params[:term], page: params[:page], per_page: 10
    render "jobs/index"
  end

  private

  def permitted_params
    params.permit(job: [:title, :location, :email, :experience_level, :position_type, :remote_potential, :description])
  end

end
