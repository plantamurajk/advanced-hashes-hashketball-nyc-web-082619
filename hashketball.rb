# Write your code here!

require "pry"

def game_hash
  hash = {:home => {}, :away => {}}
  
  hash[:home] = {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => []}
  hash = populate_nets(hash)
  puts hash
end

def create_player(name, number, shoe, points, rebounds, assists, steals, blocks, dunks)
  
  player = {:player_name => name, :number => number, :shoe => shoe, :points => points, :rebounds => rebounds, :assists => assists, :steals => steals, :blocks => blocks, :slam_dunks => dunks}
  
end

def populate_nets(hash)
  hash[:home][:players] << create_player('Alan Anderson', 0, 16, 22, 12, 12, 3, 1, 1)
  hash[:home][:players] << create_player('Reggie Evans', 30, 14, 12, 12, 12, 12, 12, 7)
  hash[:home][:players] << create_player('Brook Lopez', 11, 17, 17, 19, 10, 3, 1, 15)
  hash[:home][:players] << create_player('Mason Plumlee', 1, 19, 26, 11, 6, 3, 8, 5)
  hash[:home][:players] << create_player('Jason Terry', 31, 15, 19, 2, 2, 4, 11, 1)
  
  return hash
end
game_hash
