class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


      has_many :coworkingspaces 
      has_many :orderspaces
      has_one :userparam   
      has_many :comments

      protected
      def confirmation_required?
      	      if Rails.env.development?
      	false
      else
        false
      end
  end
end
