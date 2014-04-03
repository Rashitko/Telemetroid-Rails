class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :identifier
      t.references :feed, index: true

      t.timestamps
    end
  end
end