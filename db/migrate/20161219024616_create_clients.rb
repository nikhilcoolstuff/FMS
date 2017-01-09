class CreateClients < ActiveRecord::Migration
  def up
    create_table :clients do |t|
           t.integer  "client_id"
           t.string   "client_name", :limit => 30
           t.string   "primary_contact_person", :limit => 20
           t.string   "primary_contact_number"
           t.string   "client_address"
           t.string   "client_primary_email"
           t.string   "master_user_id"
           t.string   "master_password"
           t.date     "contract_start_date"
           t.date     "contract_end_date"
           t.timestamps
#          t.datetime "created_at"
#          t.datetime "update_at"
    end
  end

  def down
    drop_table :clients
  end
end
