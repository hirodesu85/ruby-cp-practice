def judge(s)
  count = 0
  s.each_char do |char|
    if char == "("
      count += 1
    else
      count -=1
    end
    return false if count < 0
  end

  return count == 0
end

n = gets.to_i

(0...(1 << n)).each do |i|
  result = ""
  (n-1).downto(0) do |j|
    if (i & (1 << j)) == 0
      result += "("
    else
      result += ")"
    end
  end

  puts result if judge(result)
end
