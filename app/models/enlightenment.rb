class Enlightenment < ActiveRecord::Base
  attr_accessible :adventure_id, :goal_id

  belongs_to :adventure
  belongs_to :goal
end
