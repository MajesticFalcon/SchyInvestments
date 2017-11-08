class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :prospects
  has_many :investors
  has_many :motivations
  has_many :p_scales
  has_many :l_surveys
  has_many :comps
end
