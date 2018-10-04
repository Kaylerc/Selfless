class DistributionsController < ApplicationController
  before_action :set_distribution, only: [:show, :edit, :update, :destroy]
  after_action :update_info, only: [:create]

def new
  @distribution = Distribution.new
  @runners = Runner.all
end

def index
  @runners = Runner.all
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


def destroy
    respond_to do |format|
      format.js
      format.html { p 'html response'; redirect_to root_path }
    end
    @distribution.destroy
end




private

  def set_distribution
      @distribution = Distribution.find(params[:id])
  end

  def distribution_params
    params.require(:distribution).permit(:first_name, :last_name, :email, :phone, :region, :dropoff_location, :distribution, :dropoff_time, :dropoff_date, :runner_id, :donation_id, :password, :password_confirmation)
  end
end
