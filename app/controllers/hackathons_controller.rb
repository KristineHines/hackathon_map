class HackathonsController < ApplicationController
  def index
    path = "http://hackerleague.org/api/v1/hackathons.json"
    @hackathons = HTTParty.get(path)
    @hackathons.each do |hackathon|
      if Hackathon.find_by_hackathon_id(hackathon["id"]) == nil
        Hackathon.create(hackathon_id: hackathon["id"],
                              address: "#{hackathon["location"]["city"]},
                                        #{hackathon["state"]}
                                        #{hackathon["country"]}",
                                  png: hackathon["logo"],
                                 name: hackathon["name"],
                                  url: hackathon["url"])
      end
    end
    get_markers
  end

  def get_markers
    @all_hacks = Hackathon.all
    @hash = Gmaps4rails.build_markers(@all_hacks) do |hackathon, marker|
      marker.infowindow "<h3>#{hackathon.name}</h3><a href=#{hackathon.url}>#{hackathon.url}</a>"
      marker.lat hackathon.latitude
      marker.lng hackathon.longitude
    end
  end
end