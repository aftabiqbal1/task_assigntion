class User < ApplicationRecord
    #Enums
    enum role: { admin: 0, staff: 1 }

    #Relationships
    has_many :assigneds
    has_many :tasks, through: :assigneds
    has_many :comments
end
