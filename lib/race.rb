module RaceBet
  class Race

    class << self
      def score(guesses, winners)
      	result = 0
        guesses.each_with_index do |x, index|
       	  case 
       	 	when x == winners.first && index == 0 then 
       	 		result += 15
       	 	when x == winners[1] && index == 1  then 
       	 		result += 10
       	 	when x == winners[2] && index == 2  then 
       	 		result += 5
       	 	when x == winners[3] && index == 3 then 
       	 		result += 3
       	 	when x == winners[4] && index == 4 then 
       	 		result += 1
        	when winners.include?(x) then
        	 	result += 1
       	  end

         
       end

        result
      end

  	end
  end
end