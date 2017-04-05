class CreateTweet < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.integer :id_tweet
      t.string :content
    end
  end
end
