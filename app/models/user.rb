class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable




   before_create :make_admin_user

   private

   def make_admin_user
     if self.name == "john young"
       self.admin = 'true'
     end
   end
end
