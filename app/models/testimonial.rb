class Testimonial < ActiveRecord::Base
  attr_accessible :nutritionist_id, :text

  belongs_to :nutritionist
end
