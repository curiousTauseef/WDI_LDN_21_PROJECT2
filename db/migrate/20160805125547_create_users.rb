class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :username
      t.string :profile_pic

      t.timestamps
    end
  end
end
