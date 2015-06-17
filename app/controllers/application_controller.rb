class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
require 'pry'
  def after_sign_in_path_for(resource)
    if current_user.job_seeker.nil?
      new_job_seeker_path(current_user.job_seeker)
    else
      job_seeker_path(current_user.job_seeker)
    end
  end

  protect_from_forgery with: :exception
end
