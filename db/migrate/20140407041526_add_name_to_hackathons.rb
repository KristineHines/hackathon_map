class AddNameToHackathons < ActiveRecord::Migration
  def change
    add_column :hackathons, :name, :string
  end
end
