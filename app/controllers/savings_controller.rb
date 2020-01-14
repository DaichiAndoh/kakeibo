class SavingsController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @expenditures = current_user.expenditures
    @incomes = current_user.incomes
    @expenditures_or_incomes = @expenditures + @incomes
  end
end
