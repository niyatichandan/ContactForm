class CreateContactsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :phone_number, limit: 32
      t.text :message, null: false
      t.string :locale, null: false, limit: 16, default: "en"
      t.timestamps
    end
  end
end
