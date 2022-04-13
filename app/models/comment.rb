class Comment < ApplicationRecord
    #Relationships
    belongs_to :user
    belongs_to :task
    has_many :comment, foreign_key: :comment_id, class_name: 'Comment'
end
