class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.date :event_start
      t.date :event_end
      t.text :event_address
      t.boolean :authorized
      t.boolean :closed
      t.integer :customer_id

      t.timestamps
    end
  end
end
