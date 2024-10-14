# 入力
s_arr = []
12.times do
  s_arr << gets.chomp
end

# 出現順序 = 文字数となる文字列の数をカウント
count = 0
s_arr.each_with_index do |s, idx|
  if s.length == idx + 1
    count += 1
  end
end

puts count
