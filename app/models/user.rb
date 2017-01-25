class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :followers
  has_many :issues, through: :followers

  def is_following?(issue)
    Follower.find_by(user_id: id, issue_id: issue.id) != nil
  end
end
