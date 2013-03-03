class PersonalBlog < ActiveRecord::Base
  attr_accessible :blog, :person_id

  validates_presence_of :blog

  belongs_to :person
end
