
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)

end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  rand1 = deal_card
  rand2 = deal_card
  card_total = rand1 + rand2

  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
    prompt_user
    input = get_user_input

    if input == 's'
      return card_total
    elsif input == 'h'
      deal = deal_card
      return card_total+= deal
    else
      invalid_command
    hit?(card_total)
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum >21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)

end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  rand1 = deal_card
  rand2 = deal_card
  card_total = rand1 + rand2

  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
    prompt_user
    input = get_user_input

    if input == 's'
      return card_total
    elsif input == 'h'
      deal = deal_card
      return card_total+= deal
    else
      invalid_command
    hit?(card_total)
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum >21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
