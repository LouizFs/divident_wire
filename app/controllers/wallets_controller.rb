class WalletsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_wallet, only: %i[show edit update destroy]
  def index
    @wallets = current_user.wallets.all
  end

  def show
  end

  def new
    @wallet = current_user.wallets.new
  end

  def edit
  end


  def current
    @wallet = current_user.wallets.find_by(id: params[:wallet_id])

    if @wallet
      session[:current_wallet_id] = @wallet.id
    end

    respond_to do |format|
      format.html { redirect_to root_path }
      format.turbo_stream
    end
  end

  def create
    @wallet = current_user.wallets.new(wallet_params)
    respond_to do |format|
        if @wallet.save
          format.html { render :index }
        else
          format.html { render :new }
        end
    end
  end

  def update
    respond_to do |format|
      if @wallet.update(wallet_params)
        format.html { render :index }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @wallet.destroy
    respond_to do |format|
      format.html { render :index }
    end
  end

  private

  def set_wallet
    @wallet = current_user.wallets.find(params[:id])
  end

  def wallet_params
    params.require(:wallet).permit(:name, :description)
  end
end
