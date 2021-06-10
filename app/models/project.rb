class Project < ApplicationRecord
    has_many :roles
    has_many :tickets
    has_many :users, through: :roles
end
