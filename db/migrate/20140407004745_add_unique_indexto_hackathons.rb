class AddUniqueIndextoHackathons < ActiveRecord::Migration
  def change
    add_index :hackathons, :hackathon_id, :unique => true
  end
end
