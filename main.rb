def fibs_rec(number)
  array = []

  for i in (0..number)
    case i
    when 0
      array[i] = 0
    when 1
      array[i] = 1
    else
      array[i] = array[i-1] + array[i-2]
    end

  end
  array

end

def merge_sort(array)
  if array.length <= 1
    return array
  end

  mid = array.length / 2
  left = array[0, mid]
  right = array[mid..-1]

  left = merge_sort(left)
  right = merge_sort(right)

  return merge(left, right)
end

def merge(left, right)
  result = []
  i = 0
  j = 0

  while i < left.length && j < right.length
    if left[i] <= right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end

  result.concat(left[i..-1]) if i < left.length
  result.concat(right[j..-1]) if j < right.length

  return result
end


array = [6, 5, 3, 1, 4, 2]
sorted_array = merge_sort(array)

puts sorted_array.inspect
