class Agent < ActiveRecord::Base
  attr_accessible :account_manager_id, :name

  validates :name, presence: true, length: { maximum: 20 }
  has_many :events
end
