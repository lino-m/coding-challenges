class MarsView
  def ask_user_for(something)
    puts "Please provide -> #{something}"
    print '>>'
    gets.chomp
  end

  def success_message(action)
    "Successfully #{action}"
  end
end
