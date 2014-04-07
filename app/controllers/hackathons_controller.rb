class HackathonsController < ApplicationController
  def index
    path = "http://hackerleague.org/api/v1/hackathons.json"
    @hackathons = HTTParty.get(path)
    @hackathons.each do |hackathon|
      Hackathon.create(hackathon_id: hackathon["id"], 
                            address: "#{hackathon["location"]["city"]}, 
                                      #{hackathon["state"]} 
                                      #{hackathon["country"]}")
    end
  end
end