class CreateStudentsNonProfits < ActiveRecord::Migration
  def change
    create_table :students_non_profits do |t|

      t.timestamps null: false
    end
  end
end
