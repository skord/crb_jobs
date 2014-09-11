class JobsController < InheritedResources::Base
  has_scope :page, default: 1

  def search
    @jobs = Job.search params[:term], page: params[:page], per_page: 10
    render "jobs/index"
  end

  private

  def permitted_params
    params.permit(job: [:title, :description, :is_open, :experience_level, :email, :created_at,
                        :updated_at, :description_markdown, :position_type, :location,
                        :remote_potential, :company_name, :url])
  end

end
