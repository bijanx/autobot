class CreateInitTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :username
      t.string      :email
      t.string      :crypted_password
      t.string      :password_salt
      t.string      :persistence_token
      t.string      :phone_number
      t.boolean     :admin
      t.timestamps
    end

    create_table :autos do |t|
      t.string :make
      t.string :model
      t.string :license_plate
      t.integer :user_id
      t.timestamps
    end
  end
end
