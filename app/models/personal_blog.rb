class PersonalBlog < ActiveRecord::Base
  attr_accessible :blog, :person_id

  belongs_to :person
end
