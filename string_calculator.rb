def add_numbers(numbers)
  output = []
  comma = ', '

  # remove delimiter
  if numbers.start_with?("//")
    numbers.gsub!("//;", ",").gsub!(";", ',')
  end

  # remove \n
  numbers.gsub!("\n", comma)

  # calc the string
  numbers.split(',').each do |number|
    return puts "negative numbers not allowed #{number}" if number.to_i < 0
    return "invalid input" if numbers.split(',').last.blank?

    output << number.to_i
    
  end  
  output.sum
end