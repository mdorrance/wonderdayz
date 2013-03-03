class FamilyBlog < ActiveRecord::Base
  attr_accessible :blog, :family_id

  validates_presence_of :blog

  belongs_to :family
end
