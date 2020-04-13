class Animal < ApplicationRecord
    belongs_to :shelter
    has_many :adoption_processes
    has_many :users, through: :adoption_processes
end
