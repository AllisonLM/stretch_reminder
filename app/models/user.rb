class User < ActiveRecord::Base
  validates_presence_of :name
  validates :name, length: { maximum: 30 }
  validates :phone_number, presence: true, uniqueness: true, length: { is: 10 }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

