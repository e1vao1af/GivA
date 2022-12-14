class Buddy < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many :reviews
  validates_uniqueness_of :asker, scope: [:receiver]

  enum status: [:accepted, :rejected, :pending]
end
