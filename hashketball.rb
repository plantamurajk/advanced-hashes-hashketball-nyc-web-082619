# Write your code here!

require "pry"

def game_hash
  hash = {:home => {}, :away => {}}
  
  hash[:home] = {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => []}
  hash = populate_nets(hash)
  
  hash[:away] = {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => []}
  hash = populate_hornets(hash)

  return hash
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

def populate_hornets(hash)
  hash[:away][:players] << create_player('Jeff Adrien', 4, 18, 10, 1, 1, 2, 7, 2)
  hash[:away][:players] << create_player('Bismack Biyombo', 0, 16, 12, 4, 7, 22, 15, 10)
  hash[:away][:players] << create_player('DeSagna Diop', 2, 14, 24, 12, 12,4, 5, 5)
  hash[:away][:players] << create_player('Ben Gordon', 8, 15, 33, 3, 2, 1, 1, 0)
  hash[:away][:players] << create_player('Kemba Walker', 33, 15, 6, 12, 12, 7, 5, 12)
  
  return hash
end
#game_hash

def num_points_scored(player)

  game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:player_name] == player then
       return attributes[:players][counter][:points]
     end
     counter += 1
   end
  end
end

def shoe_size(player)
    game_hash.map  do |team, attributes|
   counter = 0
   while attributes[:players][counter] do
     if attributes[:players][counter][:player_name] == player then
       return attributes[:players][counter][:shoe]
     end
     counter += 1
   end
  end
end

def team_colors(team_name)
  game_hash.map do |team, attributes|
    if attributes[:team_name] == team_name then
      return attributes[:colors]
    end
  end
end

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end

puts game_hash