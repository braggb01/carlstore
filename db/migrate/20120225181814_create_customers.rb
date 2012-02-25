class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :home_phone
      t.string :mobile_phone
      t.string :office_phone
      t.text :address

      t.timestamps
    end
  end
end
