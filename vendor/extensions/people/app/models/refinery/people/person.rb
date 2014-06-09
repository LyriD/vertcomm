module Refinery
  module People
    class Person < Refinery::Core::BaseModel
      self.table_name = 'refinery_people'

      attr_accessible :first_name, :last_name, :avatar_id, :short_comment, :full_comment, :position

      validates :first_name, :avatar_id, :presence => true

      belongs_to :avatar, :class_name => '::Refinery::Image'
    end
  end
end
