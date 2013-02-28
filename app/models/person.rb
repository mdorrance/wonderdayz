class Person < ActiveRecord::Base
  attr_accessible :age, :gender_id, :person_avatar_id, :role_id, :sash_id, :trail_name
end
