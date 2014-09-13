class SearchesController < ApplicationController

  def new
    @term       = params[:term]
    @jobs       = Job.search @term
    @candidates = Candidate.search @term
  end

end
