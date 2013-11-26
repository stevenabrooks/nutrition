class Certification < ActiveRecord::Base
  attr_accessible :degree_id, :nutritionist_id

  belongs_to :nutritionist
  belongs_to :degree
end
