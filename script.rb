def bubble_sort(numbers)
  p get_sorting(numbers)
end

def get_sorting(numbers)
  sorted_numbers = numbers
  numbers.each_with_index do |number, index|
    if sorted_numbers[index + 1] && sorted_numbers[index] > sorted_numbers[index + 1] 
      sorted_numbers[index] = sorted_numbers[index + 1]
      sorted_numbers[index + 1] = number
      get_sorting(sorted_numbers)
    end
  end
end

bubble_sort([34,13,78,2,0,2, 10])
