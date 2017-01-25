class Issue < ActiveRecord::Base
  # def reporter_id
  #   ...
  # end
  # def reporter
  #   User.find reporter_id
  # end
  belongs_to :reporter, class_name: 'User'

  # Would generate a `user` method instead -
  # belongs_to :user, foreign_key: :reporter_id

  # def assignee
  #   Developer.find assignee_id
  # end
  belongs_to :assignee, class_name: 'Developer'

  has_many :comments

  has_many :followers
  has_many :users, through: :followers
end
