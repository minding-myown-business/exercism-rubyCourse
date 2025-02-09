module Blackjack
  def self.parse_card(card)
    case card
    when "ace" then 11
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten" then 10
    when "jack" then 10
    when "queen" then 10
    when "king" then 10
    when "other" then 10
    else 0
    end
  end

  def self.card_range(card1, card2)
    total = 0
    [parse_card(card1), parse_card(card2)].each {|card| total += card }
    case total
    when 4..11 then "low"
    when 12..16 then "mid"
    when 17..20 then "high"
    when 21 then "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    # Step 0: Calculate total value
    total = parse_card(card1) + parse_card(card2)
    dealer_value = parse_card(dealer_card)

    # Step 1: Split if pair of aces
    return "P" if card1 == "ace" && card2 == "ace"

    # Step 2: Handle blackjack
    if total == 21
      return dealer_value >= 10 ? "S" : "W"
    end

    # Step 3: Handle high range
    if total >= 17 && total <= 20
      return "S"
    end

    # Step 4: Handle mid range
    if total >= 12 && total <= 16
      return dealer_value >= 7 ? "H" : "S"
    end

    # Step 5: Handle low range, fallback
    return "H"
  end
end
