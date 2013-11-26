class Nutritionist < ActiveRecord::Base
  attr_accessible :awards, :image, :education, :expertise, :name, :practice, :statement, :title, :website
  mount_uploader :image, ImageUploader

  has_many :certifications
  has_many :degrees, through: :certifications 
  has_many :testimonials

end
