class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :desc
      t.integer :project_id
      t.timestamps
    end
  end
end
