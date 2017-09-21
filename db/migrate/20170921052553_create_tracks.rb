class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.datetime :time
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
