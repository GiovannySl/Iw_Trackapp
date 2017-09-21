class AddStartAndStopToTrack < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :start, :datetime
    add_column :tracks, :stop, :datetime
  end
end
