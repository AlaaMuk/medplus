class Medication < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  belongs_to :hcprof
end
