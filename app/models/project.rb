class Project < ApplicationRecord
    has_many :roles, dependent: :destroy
    has_many :tickets, dependent: :destroy
    has_many :users, through: :roles
end
