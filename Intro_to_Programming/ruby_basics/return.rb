# def meal
#   return 'Breakfast'
# end

# puts meal
# def meal
#   # 'Dinner'
#   puts 'Dinner'
# end

# p meal

# def count_sheep
  # 5.times do |sheep|
  #   puts sheep
  # end
# end

# puts count_sheep
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

puts count_sheep