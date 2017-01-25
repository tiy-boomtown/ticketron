class Issue < ActiveRecord::Base
  # def reporter_id
  #   ...
  # end
  # def reporter
  #   User.find reporter_id
  # end

  belongs_to :reporter, class_name: 'User'

  # def assignee
  #   Developer.find assignee_id
  # end
  belongs_to :assignee, class_name: 'Developer'
end
