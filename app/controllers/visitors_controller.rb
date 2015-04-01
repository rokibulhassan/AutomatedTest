class VisitorsController < ApplicationController
  def index
    @visitors = User.all
  end
end
