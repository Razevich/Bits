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
  before_save :name_setter

  class << self
    def from_omniauth(auth_hash)
      student = find_or_create_by(uid: auth_hash['uid'].to_s, provider: auth_hash['provider'])
      student.name = auth_hash['info']['name']
      student.location = auth_hash['info']['location']
      student.image_url = auth_hash['info']['image']
      student.token = auth_hash['credentials']['token']
      student.expires_at = Time.at(auth_hash.credentials.expires_at)
      student.url = auth_hash['info']['urls'][student.provider.capitalize]
      student.first_name = student.name.split()[0]
      student.last_name = student.name.split()[-1]
      student.save!
      student
    end
  end

  def name_setter
    if self.first_name != nil && self.name == nil
      self.name = self.first_name + self.last_name
    end
  end
end
