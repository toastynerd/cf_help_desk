class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :issue
      t.text :description

      t.timestamps
    end
  end
end
