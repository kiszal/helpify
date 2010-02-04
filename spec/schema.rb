ActiveRecord::Schema.define :version => 0 do

  create_table "closed_helps", :force => true do |t|
    t.integer  "helpable_id"
    t.string   "helpable_type"
    t.string   "url"
  end

  create_table :helpable_models, :force => true do |t|
    t.string   "title"
  end 

  create_table :unhelpable_models, :force => true do |t|
    t.string   "title"
  end 

end
