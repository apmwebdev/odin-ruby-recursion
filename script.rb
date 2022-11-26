def fibs(num)
  result = []
  if num == 1
    result = [0]
  elsif num == 2
    result = [0, 1]
  elsif num >= 3
    result = [0, 1]
    (3..num).each do |i|
      result.push(result[-1] + result[-2])
    end
  end
  result
end

def fibs_rec(num, result = [0, 1])
  if result.length >= num
    result
  else
    result.push(result[-1] + result[-2])
    fibs_rec(num, result)
  end
end

def merge_sort(a)
  if a.length > 1
    left, right = a.each_slice((a.size / 2.0).round).to_a
    merge(merge_sort(left), merge_sort(right))
  else
    a
  end
end

def merge(a, b)
  result = []
  until a.empty? && b.empty?
    if !a.empty? && !b.empty? && a[0] < b[0]
      result.push(a.shift)
    elsif !a.empty? && !b.empty? && a[0] > b[0]
      result.push(b.shift)
    elsif !a.empty? && b.empty?
      result.push(a.shift)
    elsif !b.empty? && a.empty?
      result.push(b.shift)
    else
      raise "Error: shouldn't be able to get here"
    end
  end
  result
end

arr = [5, 3, 4, 1, 2, 6]

p merge_sort(arr)