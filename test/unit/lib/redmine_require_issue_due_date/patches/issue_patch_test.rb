require File.dirname(__FILE__) + '/../../../../test_helper'

class RedmineRequireIssueDueDate::Patches::IssuePatchTest < ActiveSupport::TestCase
  context "Issue" do
    subject { Issue.new }
    
    should_validate_presence_of :due_date
  end
end
