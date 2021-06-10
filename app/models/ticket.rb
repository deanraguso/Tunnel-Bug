class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :ticket_changes
end
