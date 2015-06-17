class JobSeeker < ActiveRecord::Base
  belongs_to :user
  has_many :meetings
  # def find_most_recent_meeting
  #   meetings = self.meetings
  #   #find most recent meeting and return it
  # end
end
