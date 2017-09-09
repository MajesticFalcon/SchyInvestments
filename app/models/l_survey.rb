class LSurvey < ActiveRecord::Base
  has_many :prospect
  def address
    "#{street_num} #{street_ord} #{street_name}"
  end
end
