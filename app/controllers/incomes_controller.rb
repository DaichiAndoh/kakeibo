class IncomesController < ApplicationController
  before_action :require_user_logged_in
  
  def index
  end

  def new
    @income = current_user.incomes.build
  end

  def create
    @income = current_user.incomes.build(income_params)
    
    if @income.save
      flash[:success] = '収入を保存しました'
      redirect_to root_url
    else
      flash.now[:danger] = '収入の保存に失敗しました'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def income_params
    params.require(:income).permit(:price, :category, :memo, :date)
  end
end
