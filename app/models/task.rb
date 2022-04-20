class Task < ApplicationRecord
    has_many :users, through: :assigneds
    has_many :comments
    has_many :assigneds 

    #Enums
    #enum status {incomplete: 0,finished: 1}
    enum :status, {unassigned: "unassigned", todo: "todo" , inprogress: "inprogress", submitted: "submitted", completed: "completed"}, default: "unassigned"
end
