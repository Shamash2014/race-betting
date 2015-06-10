module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        true_strike = [15, 10, 5, 3, 1]
        false_strike = 1


        result = 0
        guesses.zip(winners, true_strike) { |guess, winner, score| guess == winner ? result += score : winners.include?(guess) ? result += false_strike : result += 0}
        result
       #  guesses.each_with_index do |x, index|
       #      case 
       #        when x == winners.first && index == 0 then 
       #            result += 15
       #        when x == winners[1] && index == 1  then 
       #            result += 10
       #        when x == winners[2] && index == 2  then 
       #            result += 5
       #        when x == winners[3] && index == 3 then 
       #            result += 3
       #        when x == winners[4] && index == 4 then 
       #            result += 1
       #    when winners.include?(x) then
       #        result += 1
       #      end

         
       # end

    

        end

    end
  end
end