class AddRolesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.string :role, null: false, default: "client"
      t.bigint :user_id
      t.bigint :project_id

      t.timestamps
    end

    add_index :roles, :user_id
    add_index :roles, :project_id
  end
end
