class Meeting < ActiveRecord::Base
  belongs_to :job_seeker
  belongs_to :interviewer
end