class Task < ApplicationRecord
    has_many :users, through: :assigneds
    has_many :comments

    #Enums
    enum status: {incomplete: 0,finished: 1}
end
