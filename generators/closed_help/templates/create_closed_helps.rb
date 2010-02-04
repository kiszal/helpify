class CreateClosedHelps < ActiveRecord::Migration
  def self.up
    create_table :closed_helps do |t|
      t.integer :helpable_id
      t.string  :helpable_type
      t.string  :url
      t.timestamps
    end

  end

  def self.down
    drop_table :closed_helps
  end
end
