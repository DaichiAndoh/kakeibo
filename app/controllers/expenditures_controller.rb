class ExpendituresController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @expendetures = current_user.expenditures
  end

  def new
    @expenditure = current_user.expenditures.build
  end

  def create
    @expenditure = current_user.expenditures.build(expenditure_params)
    
    if @expenditure.save
      flash[:success] = '支出を保存しました'
      redirect_to root_url
    else
      flash.now[:danger] = '支出の保存に失敗しました'
      render :new
    end
  end

  def edit
    @expenditure = Expenditure.find(params[:id])
  end

  def update
    @expenditure = Expenditure.find(params[:id])
    if @expenditure.update(expenditure_params)
      flash[:success] = '変更を保存しました'
      redirect_to root_url
    else
      flash[:danger] = '変更を保存できませんでした'
      render :edit
    end
  end

  def destroy
  end
  
  private
  
  def expenditure_params
    params.require(:expenditure).permit(:price, :category, :memo, :date)
  end
end
