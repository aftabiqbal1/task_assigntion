class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    #Enums
    enum :role, { admin: 0, staff: 1 }, default:0

    #Relationships
    has_many :assigneds
    has_many :assigned_tasks, through: :assigneds
    has_many :comments
    has_many :tasks
    has_many :users
    belongs_to :user
    
    belongs_to :admin_user, class_name: 'User', foreign_key: 'user_id'

    
    #reset_password_token for staff
    before_save :reset_token, if: :role
    def role?
      return (self.role).eql?("staff")
    end
    def reset_token
      self.reset_password_token = SecureRandom.hex(10)
      self.reset_password_sent_at = Time.now.utc
    end
    before_validation :chk

    def chk
      puts "helloh"
    end
end
