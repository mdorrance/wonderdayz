class Person < ActiveRecord::Base
  attr_accessible :age, :gender_id, :trail_name, :family_id, :gender, :role, :avatar_id

  belongs_to :family
  belongs_to :avatar

end
