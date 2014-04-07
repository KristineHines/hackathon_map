class CreateHackathons < ActiveRecord::Migration
  def change
    create_table :hackathons do |t|
      t.string :hackathon_id
      t.string :address
      t.float :latitude
      t.float :longitude
    end
  end
end
