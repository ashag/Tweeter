class AddColumnsInTweetModel < ActiveRecord::Migration
  def change
  	add_column :tweets, :body, :string
  	add_column :tweets, :author, :string
  end
end
