class CustomersController < ApplicationController

  def list 
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      #redirect_to :action => :list
      render :success
    else
      render :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

end
