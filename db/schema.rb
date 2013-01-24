
ActiveRecord::Schema.define(:version => 20130117111020) do

  create_table "ankets", :force => true do |t|
    t.string   "answer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.integer  "userid"
    t.datetime "time"
  end

  create_table "classnames", :force => true do |t|
    t.string   "schoolname"
    t.string   "classname"
    t.string   "floor"
    t.datetime "examdate"
    t.string   "desk"
    t.integer  "totaldesk"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "no"
    t.string   "schname"
    t.string   "clsname"
    t.string   "flat"
    t.datetime "exmdate"
    t.string   "exmdesk"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ttldesk"
  end

  create_table "passwords", :force => true do |t|
    t.string   "new_password"
    t.string   "new_password_confirmation"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "userid"
  end

  create_table "times", :force => true do |t|
    t.datetime "time_login"
    t.datetime "time_start"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "role",            :default => "guest"
    t.datetime "userlogin"
    t.string   "okulno"
  end

end
