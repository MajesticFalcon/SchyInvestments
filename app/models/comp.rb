class Comp < ActiveRecord::Base
  belongs_to :prospect
  def address
    "#{street_num} #{street_ord} #{street_name}"
  end
end
