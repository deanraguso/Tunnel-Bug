class CreateTicketChanges < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_changes do |t|
      t.string :comment, null: false
      t.references :user, null: false, foreign_key: true
      t.references :ticket, null: false, foreign_key: true
      t.string :priority_change, default: ""
      t.string :status_change, default: ""

      t.timestamps
    end
  end
end
