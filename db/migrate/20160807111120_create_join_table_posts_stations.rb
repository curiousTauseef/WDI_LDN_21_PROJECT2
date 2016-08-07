class CreateJoinTablePostsStations < ActiveRecord::Migration[5.0]
  def change
    create_join_table :posts, :stations do |t|
      # t.index [:post_id, :station_id]
      # t.index [:station_id, :post_id]
    end
  end
end
