class Issue < ActiveRecord::Base
  # def reporter_id
  #   ...
  # end
  # def reporter
  #   User.find reporter_id
  # end

  belongs_to :reporter, class_name: 'User'
end
