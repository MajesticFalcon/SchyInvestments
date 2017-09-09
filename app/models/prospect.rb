class Prospect < ActiveRecord::Base
  belongs_to :investor
  belongs_to :motivation
  belongs_to :pscale
  belongs_to :lsurvey
end
