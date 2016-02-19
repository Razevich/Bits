class Project < ActiveRecord::Base

  belongs_to :non_profit
  belongs_to :student

  has_many :comments, as: :commentable
  has_many :tags, as: :tagable
  has_many :solutions, as: :solutionable

end
