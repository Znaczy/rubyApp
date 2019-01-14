class CitationsController < ApplicationController
  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)

    if(@citation.author.empty?)
      @citation.author = "Unknown"
    end

    if @citation.save
      redirect_to :action => "index", :controller => "home"
    else
      render 'new'
    end
  end

  private
  def citation_params
    params.require(:citation).permit(:citation, :author)
  end
end
