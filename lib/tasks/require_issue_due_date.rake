namespace :require_issue_due_date do
  desc <<-END_DESC
Update all of the issues with blank or empty due dates using DUE_DATE

Examples:
  rake require_issue_due_date:update_blank_due_dates DUE_DATE=2010-12-31
END_DESC
  task :update_blank_due_dates => :environment do
    due_date = ENV['DUE_DATE'] || ENV['due_date']
    
    raise ArgumentError, "DUE_DATE must be set" if due_date.blank?
    
    Issue.update_all("due_date = '#{due_date}'", ["due_date IS NULL OR due_date = ''"])
  end
end
