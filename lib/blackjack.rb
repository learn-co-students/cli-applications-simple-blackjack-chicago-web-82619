def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num_1 = deal_card
  num_2 = deal_card
  
  display_card_total(num_1 + num_2)
  
  return num_1 + num_2
end

def hit?(num)
  prompt_user
  input = get_user_input
  
  if input == "h"
    num += deal_card
  else
    if input != "s"
      invalid_command
      prompt_user
      input = get_user_input
    end
  end
  
  return num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  
  while card_sum <= 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  
end_game(card_sum)
  
end
    
