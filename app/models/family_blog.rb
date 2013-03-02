class FamilyBlog < ActiveRecord::Base
  attr_accessible :blog, :family_id

  belongs_to :family
end
