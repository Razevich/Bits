class StudentsNonProfit < ActiveRecord::Base
  belongs_to :student
  belongs_to :non_profit
end
