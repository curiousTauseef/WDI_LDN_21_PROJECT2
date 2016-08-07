class CreateJoinTableLinesStations < ActiveRecord::Migration[5.0]
  def change
    create_join_table :lines, :stations do |t|
      # t.index [:line_id, :station_id]
      # t.index [:station_id, :line_id]
    end
  end
end
