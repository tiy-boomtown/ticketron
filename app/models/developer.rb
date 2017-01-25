class Developer < ActiveRecord::Base
  # def self.retired
  #   all.select { |dev| dev.retired? }
  # end
  # def Developer.active
  def self.active
    where(retired_at: nil)
  end

  def retire
    update! retired_at: Time.now
  end

  def retired?
    retired_at.present?
  end
end
