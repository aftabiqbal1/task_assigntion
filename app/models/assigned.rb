class Assigned < ApplicationRecord
    #Enums
    enum :status, { todo: "todo", inprogress: "inprogress", submitted: "submitted"}, default: "todo"

    #Relationships
    belongs_to :assigned_user, class_name: 'User', foreign_key: 'user_id'
    belongs_to :assigned_task, class_name: 'Task', foreign_key: 'task_id'
end
