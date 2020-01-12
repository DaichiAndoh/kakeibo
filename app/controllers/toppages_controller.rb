class ToppagesController < ApplicationController
  def index
    if logged_in?
      @expenditures = current_user.expenditures
    end
  end
end
