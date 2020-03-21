#CLI controller

class CLI

  def start

    self.welcome
    self.get_players_list
    #  self.get_user_input
    # self.goodbye
    # self.validate(@input)
  end

  def welcome

    puts 'welcome to the player stats portal'

      sleep(2)

    puts 'please select a player'
  end

  def get_players_list
    # binding.pry
      API.get_players
      self.display_players_list
  end

   def self.all
     @@all
   end

  def display_players_list
    Player.all.each.with_index(1) do |player, idx|
  puts "#{idx}. #{player.firstName} #{player.lastName}"
  end
  puts "Which player would you like info about?"
   @input = gets.strip
   get_user_input(@input)

  end

  def get_user_input(firstName)
    pl = Player.find_by_name(firstName)
      pl.each do |pl|
        # binding.pry
        puts "name: #{pl.firstName} #{pl.lastName}"
        puts "years pro: #{pl.yearsPro}"
        puts "country: #{pl.country}"
        puts "first year: #{pl.nbaDebutYear}"
      # puts pl.pos
    end
  end




  #   @input ==
  #   if input.to_i > 0
  #     put @input[input.to_i-1]
  #   case input
  #   when "num"
  #     puts "More info on player 1"
  #   # @input.each.with_index(1)
  # end
  #
  # def goodbye
  #   puts "awesome thanks!"
  # end

  # def validate(input)
  #    player = Player.find_by_id(input)
  #  end

  #  def show_player_info
  #    @input = Player
  #  end


  #   def get_input
  #   input = gets.chomp
  #   num = input
  #   #binding.pry
  #   Player.all.each {|player| puts player.find_index('num')}
  # # def get user inpute
  # #   player.all
  #   end

  #Player.attrs_from_hash()
end
