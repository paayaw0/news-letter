class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.boolean :confirmed
      t.string :ip_address

      t.timestamps
    end
  end
end
