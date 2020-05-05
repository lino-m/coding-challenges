class RoversView
  def advice_user_that(string)
    puts ''
    puts '-----> Message Incomimng <---- '
    puts "Commander, please note that #{string}"
    puts '-----------> Over <-----------'
    puts ''
  end

  def display_as_list(array)
    array.each_with_index do |element, index|
      if element.class == Rover
        puts "#{index + 1} - Rover | Orientation: #{element.orientation}, Position: #{element.position}"
      end
    end
  end

  def ask_user_for(string)
    puts "#{string}"
    gets.chomp
  end

  def ask_user_for_index
    puts 'Commander, go ahead and select your rover by index'
    gets.chomp.to_i - 1
  end

  def success_message(action)
    "Successfully #{action}"
  end
end
