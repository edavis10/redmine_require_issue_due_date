module RedmineRequireIssueDueDate
  module Patches
    module IssuePatch

      def self.included(base)
        base.class_eval do
          unloadable
          
          validates_presence_of :due_date
        end
      end
    end
  end
end
