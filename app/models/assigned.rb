class Assigned < ApplicationRecord
    #Enums
    enum :status, { todo: "todo", inprogress: "inprogress", submitted: "submitted"}, default: "todo"

    #Relationships
    belongs_to :user
    belongs_to :task
end
