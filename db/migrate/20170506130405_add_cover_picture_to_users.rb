class AddCoverPictureToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cover_picture, :string
  end
end
