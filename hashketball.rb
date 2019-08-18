# Write your code here!

require "pry"

def game_hash
  hash = {:home => {}, :away => {}}
  
  hash[:home] = {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => []}
  puts create_player('Alan Anderson', 0, 16, 22, 12, 12, 3, 1, 1)
  puts hash
end

def create_player(name, number, shoe, points, rebounds, assists, steals, blocks, dunks)
  
  player = {:player_name => name, :number => number, :shoe => shoe, :points => points, :rebounds => rebounds, :assists => assists, :steals => steals, :blocks => blocks, :slam_dunks => dunks}
  
end

def populate_nets(hash)
  hash[:home][:players] << create_player('Alan Anderson', 0, 16, 22, 12, 12, 3, 1, 1)
  hash[:home][:players] << create_player('Reggie Evans', 30, 14, 12, 12, 12, 12, 12, 7)
  hash[:home][:players] << create_player('Brook Lopez', 11, 17, 17, 19, 10, 3, 1, 15)
end
game_hash
