class AccountsController < ApplicationController
  before_action :bank_names
  
  def index
    @accounts = current_user.accounts
  end

  def new
    @account = Account.new
  end

  def create
    byebug
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

    def bank_names
      @banks=Account.get_names
    end

    def account_params
      params.require(:account).permit(:id, :role, :name, :institution, :open_bal, :int_rate, :mo_pmt, :limit, :intro_apr, :intro_term)
    end
end
