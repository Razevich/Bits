class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :comments, as: :commentable
  has_many :solutions, as: :solutionable
  has_many :students_non_profits
  has_many :non_profits, through: :students_non_profits

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :first_name, :last_name


  def first_name
    self.first_name = self.name.split()[0]
  end

  def last_name
    self.last_name = self.name.split()[-1]
  end
end
