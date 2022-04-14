class Assigned < ApplicationRecord
    #Enums
    enum complete_status: { pending: 0, in_progress: 1, submitted: 2}

    #Relationships
    belongs_to :user
    belongs_to :task
end
