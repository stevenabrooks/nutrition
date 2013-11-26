class Degree < ActiveRecord::Base
  attr_accessible :description, :title, :nutritionist_id, :full_title

  belongs_to :nutritionist
  has_many :certiciations
  has_many :nutritionists, through: :certiciations
end
