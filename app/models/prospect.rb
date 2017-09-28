class Prospect < ActiveRecord::Base
  attr_accessor :expense
  belongs_to :investor
  belongs_to :motivation
  belongs_to :pscale
  has_many :lsurvey
  has_many :expenses
  has_one :b_strategy
  has_many :comps
  belongs_to :user
  geocoded_by :full_street_address 
  after_validation :geocode          # auto-fetch coordinates

  def address
    "#{street_num} #{street_ord} #{street_name}"
  end
  
  def full_street_address
    "#{address} #{city} #{state} #{zip}"
  end
  accepts_nested_attributes_for :expenses, reject_if: :all_blank, allow_destroy: true
end
