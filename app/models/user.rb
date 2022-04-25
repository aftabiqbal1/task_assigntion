class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    #Enums
    enum role: { admin: 0, staff: 1 }

    #Relationships
    has_many :assigneds
    has_many :assigned_tasks, through: :assigneds
    has_many :comments
    has_many :tasks
end
