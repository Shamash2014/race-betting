module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        true_strike = [15, 10, 5, 3, 1]
        false_strike = 1


        result = 0
        guesses.zip(winners, true_strike) { |guess, winner, score| guess == winner ? result += score : winners.include?(guess) ? result += false_strike : result += 0}
        result
      end

    end
  end
end