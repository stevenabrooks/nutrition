class Nutritionist < ActiveRecord::Base
  attr_accessible :awards, :image, :education, :expertise, :name, :practice, :statement, :title, :website
  mount_uploader :image, ImageUploader

end
