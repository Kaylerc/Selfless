class DistributionsController < ApplicationController
  before_action :set_distribution, only: [:show, :edit, :update]


def new
  @distribution = Distribution.new
end

def index
  @distributions = Distribution.all
end

def create
  @distribution = Distribution.new(distribution_params)
  if @distribution.save
    msg = "Your distribution has been successfully created"
    p msg
    redirect_to @distribution
  else
      msg = "There was an error in creating your distribution.  Try again"
    p msg
    p @distribution.errors.messages
    render 'new'
  end
end

def edit
end

def show
end

def update
  if @distribution.update(distribution_params)
    p 'Distribution Successfully Updated!'
    redirect_to @distribution
  else
    render 'edit'
  end
end


private

  def set_distribution
      @distribution = Distribution.find(params[:id])
  end

  def distribution_params
    params.require(:distribution).permit(:first_name, :last_name, :email, :phone, :region, :dropoff_location, :distribution, :dropoff_time, :dropoff_date, :runner, :donor, :password, :password_confirmation)
  end
end