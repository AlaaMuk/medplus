class Hcprof < ActiveRecord::Base
  belongs_to :user
  has_many :patients
  
end
