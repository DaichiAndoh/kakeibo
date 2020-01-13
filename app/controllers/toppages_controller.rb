class ToppagesController < ApplicationController
  def index
    if logged_in?
      @expenditures = current_user.expenditures
      @incomes = current_user.incomes
      @expenditures_or_incomes = @expenditures + @incomes
    end
  end
end
