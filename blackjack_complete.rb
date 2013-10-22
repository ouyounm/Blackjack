# CHALLENGES:
#
# Can you simulate a hand of blackjack?
#
# 1. Randomly choose two cards from a standard deck of 52 cards.
# HINT: Don't worry about the suits.  Just the card value/face matters.
# HINT: Arrays have a #sample method that can (optionally) accept a parameter.
#
# Example Output #1:
# 5 8

deck = %w[K K K K Q Q Q Q J J J J 10 10 10 10 9 9 9 9 8 8 8 8 7 7 7 7 6 6 6 6 5 5 5 5 4 4 4 4 3 3 3 3 2 2 2 2 A A A A]

card1 = deck.sample
card2 = deck.sample

if card1 == 'K' || card1 == 'Q' || card1 == 'J'
    card1_value= 10

  elsif card1 == 'A'
    card1_value= 11

  else
    card1_value = card1.to_i
end

if card2 == 'K' || card2 == 'Q' || card2 == 'J'
    card2_value= 10

  elsif card2 == 'A'
    card2_value= 11

  else
    card2_value = card2.to_i
end

  puts ""
  puts '=' * 100
  puts 'Let\'s play Blackjack WOOHOOOOOOO!!!!!!!!!!!!!!!!'.center(100)
  puts '=' * 100
  puts ""
  puts 'Your two cards are ' + card1 + ' and ' + card2 + '.'

  total = card1_value + card2_value

  puts ""
  puts 'Your total is ' + total.to_s

if total < 17
  puts ""
  puts 'Your total is under 17. You\'ll have to draw again'
  card3 = deck.sample
  total = card1_value + card2_value
  puts ""
  puts 'You drew a ' + card3
  puts ""
if card3 == 'K' || card3 == 'Q' || card3 == 'J'
    card3_value= 10

  elsif card3 == 'A'
    card3_value= 11

  else
    card3_value = card3.to_i

end

if total + card3_value > 21 and card3 == 'A'
  card3_value= 1
end

  final_total = card3_value + card1_value + card2_value
  puts 'Your final total is ' + final_total.to_s
end

if total == 21 || final_total == 21
  puts 'YOU WIN, CONGRATULATIONS!'
  puts ""
    puts 'Thanks for playing!!!'
    puts '='*100
    puts 'END OF GAME'.center(100)
    puts '='*100
    puts ""


    elsif total >= 17 || final_total <= 21
    puts ""
    puts 'Thanks for playing!!!'
    puts '='*100
    puts 'END OF GAME'.center(100)
    puts '='*100
    puts ""

  else
    final_total > 21
    puts 'OH NO, YOU\'RE OVER THE LIMIT! SORRY BUT YOU LOSE MY FRIEND :('
    puts ""
    puts 'Thanks for playing!!!'
    puts '='*100
    puts 'END OF GAME'.center(100)
    puts '='*100
    puts ""
end

# # Example Output #2:
# # Q 6
# #
# # Example Output #3:
# # 2 A

# # 2. Enhance #1 by showing the total score.
# # HINT: Consider all aces to have a value of 11.
# # Example Output #1:
# #
# # 5 8
# # You have 13.
# #
# # Example Output #2:
# # Q 6
# # You have 16.
# #
# # Example Output #3:
# # 2 A
# # You have 13.












# 3. Enhance #2 by adding a card if the score is less than 17.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.






# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!







# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.
