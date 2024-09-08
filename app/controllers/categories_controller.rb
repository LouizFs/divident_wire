class CategoriesController < ApplicationController
  before_action :set_category, only: [ :show, :edit, :update, :destroy ]
  def index
    @categories = Category.all.order(created_at: :desc)

    respond_to do |format|
      format.html do
        if turbo_frame_request?
          render partial: "categories/index"
        else
          render :index
        end
      end
    end
  end

  def show
  end

  def new
    @category = Category.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = current_wallet.categories.build(category_params)

    respond_to do |format|
      if @category.save
        format.html { render :index }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { render :index }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @category.destroy
        format.html { render :index }
      end
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :kind)
  end
end
