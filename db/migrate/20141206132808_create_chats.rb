class CreateChats < ActiveRecord::Migration
  def self.up
    create_table :chats do |t|
    	t.string :sender, :null=>false
    	t.string :msg, :null=>false
    	t.string :receiver, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :chats
  end
end
