class ToppagesController < ApplicationController
  def index
    @expendetures = current_user.expenditures
  end
end
