class Developer < ActiveRecord::Base
  def retire
    update! retired_at: Time.now
  end

  def retired?
    retired_at.present?
  end
end
