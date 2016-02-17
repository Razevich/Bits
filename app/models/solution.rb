class Solution < ActiveRecord::Base
  belongs_to :solutionable, polymorphic: true

  has_many :comments, as: :commentable
end
