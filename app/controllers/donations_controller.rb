class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]
  after_action :update_info, only: [:create]

    def new
      @donation = Donation.new
      @runners = Runner.all
    end

    def index
      @runners = Runner.all
      @donations = Donation.all
    end

    def create
      @donation = Donation.new(donation_params)
      if @donation.save
        msg = "Your donation has been successfully created"
        p msg
        redirect_to @donation
      else
          msg = "There was an error in creating your donation.  Try again"
        p msg
        p @donation.errors.messages
        render 'new'
      end
    end


    def show
    end


    def update
      if @donation.update(donation_params)
        p 'Donation Successfully Updated!'
        redirect_to @donation
      else
        render 'edit'
      end
    end


    def edit
    end


    def destroy
        respond_to do |format|
          format.js
          format.html { p 'html response'; redirect_to root_path }
        end
        @donation.destroy
    end


  private

    def set_donation
        @donation = Donation.find(params[:id])
    end

    def donation_params
      params.require(:donation).permit(:first_name, :last_name, :email, :phone, :region, :pickup_location, :pickup_time, :pickup_date, :donation, :runner_id, :distribution_id, :password, :password_confirmation)
    end
  end
