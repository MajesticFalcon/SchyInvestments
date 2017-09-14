class Prospect < ActiveRecord::Base
  attr_accessor :expense
  belongs_to :investor
  belongs_to :motivation
  belongs_to :pscale
  has_many :lsurvey
  has_many :expenses
  has_one :b_strategy
  has_many :comps
  def address
    "#{street_num} #{street_ord} #{street_name}"
  end
  accepts_nested_attributes_for :expenses, reject_if: :all_blank, allow_destroy: true
end
