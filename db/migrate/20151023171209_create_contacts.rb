class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name, null:false, limit:25, index:true
      t.string :last_name, null:false, limit:25, index:true
      t.string :email_address, null:false, limit:50, index:true
      t.string :phone_number, null:false, limit:25, index:true
      t.string :company_name, null:false, limit:50, index:true
      t.boolean :international, index:true
      t.string :extension, index:true

      t.timestamps null: false
    end
  end
end
