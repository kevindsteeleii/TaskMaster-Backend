class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :username
      t.string :dept
      t.integer :employer_id
      t.integer :project_id
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
