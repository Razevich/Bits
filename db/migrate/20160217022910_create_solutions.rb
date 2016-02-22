class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.references :student
      t.text      :name
      t.text      :github_link
      t.text      :description
      t.timestamps null: false
    end
  end
end
