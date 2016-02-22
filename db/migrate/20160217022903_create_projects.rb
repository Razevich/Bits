class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :non_profit
      t.references :student
      t.text      :name
      t.text      :github_link
      t.text      :description

      t.timestamps null: false
    end
  end
end
