class Comp < ActiveRecord::Base
  belongs_to :prospect
      belongs_to :user

  def address
    "#{street_num} #{street_ord} #{street_name}"
  end
end
