# 入力
ab, ac, bc = gets.split(" ")

# 条件分岐を丁寧にやる
result = "D"
if ab == "<" && ac == "<"
  if bc == "<"
    result = "B"
  else
    result = "C"
  end
elsif ab == ">" && ac == ">"
  if bc == "<"
    result = "C"
  else
    result = "B"
  end
else
  result = "A"
end

puts result
