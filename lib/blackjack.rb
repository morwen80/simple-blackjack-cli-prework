require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card
  deal2 = deal_card
  sum = deal1 + deal2
  display_card_total(sum)
  sum
end

# def hit?(current_total)
  def hit?(current_total)
  prompt_user
  choice = get_user_input
    if choice == 'h'
      card = deal_card
      current_total = card + current_total
      current_total
    elsif choice == 's'
      current_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  card_total = initial_round
    until card_total > 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    end
  end_game(card_total)
end
