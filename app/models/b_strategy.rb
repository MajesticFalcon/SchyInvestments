class BStrategy < ActiveRecord::Base
	belongs_to :prospect
  has_one :loan_type
  accepts_nested_attributes_for :loan_type
end
