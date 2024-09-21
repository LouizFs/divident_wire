class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_categories, only: [ :new, :edit, :create, :update, :show ]
  before_action :set_expense, only: [ :edit, :update, :destroy, :show ]
  def index
    @expenses = current_wallet.expenses.order(created_at: :desc)
  end

  def new
    @expense = current_wallet.expenses.new
  end

  def show
  end

  def edit
  end

  def create
    @expense = current_wallet.expenses.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { render :index }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { render :index }
    end
  end

  private

  def set_categories
    @categories = current_wallet.categories.expenses
  end

  def set_expense
    @expense = current_wallet.expenses.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:amount, :category_id, :name, :description)
  end
end
