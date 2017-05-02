class CreateFavorite < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :tweet_id
      add_foreign_key :favourites, :users
      add_foreign_key :favourites, :tweets
    end
  end
end
