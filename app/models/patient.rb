class Patient < ActiveRecord::Base
  belongs_to :hcprof
  belongs_to :user
  has_many :patients
end
