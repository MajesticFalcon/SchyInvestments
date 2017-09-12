class Prospect < ActiveRecord::Base
  attr_accessor :expense
  belongs_to :investor
  belongs_to :motivation
  belongs_to :pscale
  has_many :lsurvey
  has_many :expenses
  accepts_nested_attributes_for :expenses, reject_if: :all_blank, allow_destroy: true
end
