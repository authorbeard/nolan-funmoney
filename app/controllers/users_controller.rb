class UsersController < ApplicationController
  before_action :set_user


  def show
    
  end

  def edit
    puts "EDIT PATH"
  end

  def update
    puts "UPDATE PATH"
  end

  def destroy
    puts "DESTROY PATH"
  end

  private

  def set_user
    @user=current_user
  end

end
