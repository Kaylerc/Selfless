class RunnersController < ApplicationController
  before_action :set_runner, only: [:show, :edit, :update]

  def new
    @runner = Runner.new
  end

  def edit
  end

  def show
    @runner = Runner.find(params[:id])
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      p 'Runner created!'
      redirect_to @runner
    else
      render 'new'
    end
  end


  def index
    @distributions = Distribution.all
    @donations = Donation.all
    @runners = Runner.all
  end


    private

      def set_runner
          @runner = Runner.find(params[:id])
      end

      def runner_params
        params.require(:runner).permit(:first_name, :last_name, :email, :phone, :region)
      end
    end
  
