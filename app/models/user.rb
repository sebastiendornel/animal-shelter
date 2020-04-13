class User < ApplicationRecord
    has_many :adoption_processes
    has_many :animals, through: :adoption_processes
end
