class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :client_id 
      t.integer :programmer_id
    end
  end
end


