class AddDetailsToMessages < ActiveRecord::Migration[5.0]
  def change
  	add_column :messages, :body, :text
  	add_column :messages, :user_id, :integer, index: true
  	add_column :messages, :read, :boolean, index: true
  	add_column :messages, :created_at, :datetime
    add_column :messages, :updated_at, :datetime

  end
end
