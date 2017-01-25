class Comment < ActiveRecord::Base
  belongs_to :poster, class_name: 'User'
end
