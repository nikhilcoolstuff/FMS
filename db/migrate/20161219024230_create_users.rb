class CreateUsers < ActiveRecord::Migration
  def up
   # drop_table :users
    create_table :users do |t|
           t.integer "user_id"
           t.string "user_name", :limit => 25
           t.string "password_digest"
           t.string "contact"
           t.string "role"
           t.boolean "isActive"
           t.string "sync_status"
           t.string "email_id"
           t.string "user_contract_id"
           t.string "address", :limit =>25
           t.timestamps
    end
    User.create :user_name => "codemagma", :password => "password", :contact => "9930289999", :role => "Recorder",:isActive => true,:sync_status => 'N',:email_id => "djd@gmail.com", :user_contract_id => "nit33",:address => "test address"

#           t.datetime "created_at"
#           t.datetime "update_at"
    end

    def down
        drop_table :users
    end

end