class Task < ApplicationRecord
    has_many :assigneds 
    has_many :assigned_users, through: :assigneds
    has_many :comments
    belongs_to :user
    has_one_attached :folder
    

    #Enums
    #enum status {incomplete: 0,finished: 1}
    enum :status, {unassigned: "unassigned", todo: "todo" , inprogress: "inprogress", submitted: "submitted", completed: "completed"}, default: "unassigned"
end
