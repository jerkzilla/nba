class API
  def self.get_players
      response = HTTParty.get('http://data.nba.net/10s/prod/v1/2016/players.json')


      @@all_players = response['league']['standard'].select {|hash| hash.keys.first == "firstName"}




      binding.pry
      #response['league']['standard'][0][:firstName.to_s] -- gets first name of player



  end


  def self.all_players
    @@all_players
  end
end
