class PScale < ActiveRecord::Base
  has_many :prospect
  belongs_to :user
end
