class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :comments, as: :commentable
  has_many :solutions, as: :solutionable
  has_many :students_non_profits
  has_many :non_profits, through: :students_non_profits
  has_many :projects

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save :first_name, :last_name


  def first_name
    if self.name != nil
      self.first_name = self.name.split()[0]
    end
  end

  def last_name
    if self.name != nil
      self.last_name = self.name.split()[-1]
    end
  end

  def name
    if self.first_name != nil
      self.name = self.first_name + self.last_name
    end
  end
end
