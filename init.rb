require 'redmine'

Redmine::Plugin.register :redmine_require_issue_due_date do
  name 'Issue Due Date'
  url 'https://projects.littlestreamsoftware.com/projects/redmine-misc'
  author 'Eric Davis of Little Stream Software'
  author_url 'http://www.littlestreamsoftware.com'
  
  description 'Require Issue Due Date is a plugin to require setting due dates on issues.'
  version '0.1.0'
  requires_redmine :version_or_higher => '0.8.0'
end
