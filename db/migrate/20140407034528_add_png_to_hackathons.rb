class AddPngToHackathons < ActiveRecord::Migration
  def change
    add_column :hackathons, :png, :string
  end
end
