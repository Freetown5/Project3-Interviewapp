class JobSeekersController < ApplicationController

# before_action :authenticate_user!

  def home
  end

  # def index
  #   @job_seekers = JobSeeker.all
  # end

  def show
    # @meetings = Meeting.find(params[:id])
    # @interviewer = Interviewer.find(params[:id])
    @job_seeker = JobSeeker.find(params[:id])
    # render :show
  end

  def new
    @job_seeker = JobSeeker.new
    @interviewer = Interviewer.new
    @meeting = Meeting.new
  end

  def create
    @job_seeker = current_user.create_job_seeker(job_seeker_params)
    redirect_to job_seeker_path(@job_seeker)
  end

  def edit
    @job_seeker = current_user.job_seeker
    # render :edit
  end

  def update
    @job_seeker = current_user.job_seeker
    @job_seeker.update!(job_seeker_params)
    redirect_to job_seeker_path(@job_seeker)
  end

  def destroy
    @job_seeker = JobSeeker.find(params[:id])
    @job_seeker.destroy
    redirect_to "/job_seeker"
  end

  def job_seeker_params
    return params[:job_seeker].permit(:name, :field, :career_level, :address, :city)
  end

end
