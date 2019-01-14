class HomeController < ApplicationController
  def index
    @citations = Citation.all
  end
end
