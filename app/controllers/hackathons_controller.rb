class HackathonsController < ApplicationController

  def show
    path = "http://hackerleague.org/api/v1/hackathons.json"
    @hackathons = HTTParty.get(path)
    puts @hackathons
  end
end