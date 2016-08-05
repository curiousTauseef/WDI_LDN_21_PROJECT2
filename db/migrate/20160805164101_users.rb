class Users < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :profile_pic, :profile_picture
  end
end
