# Write your code here!
def game_hash
{
    :home => {
        :team_name => "Brooklyn Nets",
        :colors => ["Black", "White"],
        :players => [
            {:player_name => "Alan Anderson",
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,    
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1},
            {:player_name => "Reggie Evans",
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,  
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7},
                {:player_name => "Brook Lopez",
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,  
                    :assists => 10,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15},
                    {:player_name => "Mason Plumlee",
                        :number => 1,
                        :shoe => 19,
                        :points => 26,
                        :rebounds => 11,  
                        :assists => 6,
                        :steals => 3,
                        :blocks => 8,
                        :slam_dunks => 5},
                        {:player_name => "Jason Terry",
                            :number => 31,
                            :shoe => 15,
                            :points => 19,
                            :rebounds => 2,  
                            :assists => 2,
                            :steals => 4,
                            :blocks => 11,
                            :slam_dunks => 1}
        ]
    },
    :away => {
        :team_name => "Charlotte Hornets",
        :colors => ["Turquoise", "Purple"],
        :players => [
            {:player_name => "Jeff Adrien",
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,  
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2},
                {:player_name => "Bismack Biyombo",
                    :number => 0,
                    :shoe => 16,
                    :points => 12,
                    :rebounds => 4,  
                    :assists => 7,
                    :steals => 22,
                    :blocks => 15,
                    :slam_dunks => 10},
                    {:player_name => "DeSagna Diop",
                        :number => 2,
                        :shoe => 14,
                        :points => 24,
                        :rebounds => 12,  
                        :assists => 12,
                        :steals => 4,
                        :blocks => 5,
                        :slam_dunks => 5},
                        {:player_name => "Ben Gordon",
                            :number => 8,
                            :shoe => 15,
                            :points => 33,
                            :rebounds => 3,  
                            :assists => 2,
                            :steals => 1,
                            :blocks => 1,
                            :slam_dunks => 0},
                            {:player_name => "Kemba Walker",
                                :number => 33,
                                :shoe => 15,
                                :points => 6,
                                :rebounds => 12,  
                                :assists => 12,
                                :steals => 7,
                                :blocks => 5,
                                :slam_dunks => 12}
        ]
}
}
end


def num_points_scored(player)
data=game_hash
data.each { |key, value| 
    index=0
    bit=value[:players]
    while index<bit.count do
        if bit[index][:player_name] == player
            return bit[index][:points]
        end
        index+=1
    end }
end


def shoe_size(player)
data=game_hash
data.each { |key, value| 
    index=0
    bit=value[:players]
    while index<bit.count do
        if bit[index][:player_name] == player
            return bit[index][:shoe]
        end
        index+=1
    end }
end

def team_colors(team)
data=game_hash
data.each { |key, value|
  if value[:team_name] == team
    return value[:colors]
  end
}
end

def team_names
data=game_hash
array=[]
data.each { |key, value|
  array << value[:team_name]
}
array
end

def player_numbers(team)
data=game_hash
array = []
data.each { |key, value|
  bit=value[:players]
  if value[:team_name] == team
    index=0
    while index<bit.count do
    array << bit[index][:number]
    index+=1
    end
  end
}
array
end

def player_stats(player)
data=game_hash
hash={}
data.each { |key, value|
  index=0
  while index<value[:players].count do
  if value[:players][index][:player_name] == player
    value[:players][index].delete(:player_name)
    hash = value[:players][index]
  end
  index+=1
  end}
hash
end


def big_shoe_rebounds
data=game_hash
largest_shoe = 0
data.each { |key, value|
  index=0
  while index<value[:players].count do
    if value[:players][index][:shoe] > largest_shoe
      largest_shoe = value[:players][index][:shoe]
    end
  index+=1
  end
}
data.each { |key, value|
  index=0
  while index<value[:players].count do
    if value[:players][index][:shoe] = largest_shoe
      return value[:players][index][:rebounds]
    end
    index+=1
  end
}
end



     #bonus
 
 
def most_points_scored
end

def winning_team
end

def player_with_longest_name
end

# long_name_steals_a_ton?





