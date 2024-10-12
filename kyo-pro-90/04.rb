h, w = gets.split(" ").map(&:to_i)
a = []
(0...h).each do |_|
  line = gets.split(" ").map(&:to_i)
  a << line
end

row_sum = []
column_sum = []

a.each do |line|
  row_sum << line.sum
end

(0...w).each do |w_i| 
  tmp_sum = 0
  (0...h).each do |h_i|
    tmp_sum += a[h_i][w_i]
  end
  column_sum << tmp_sum
end

ans = []
(0...h).each do |h_i|
  ans_line = []
  (0...w).each do |w_i|
    ans_line << row_sum[h_i] + column_sum[w_i] - a[h_i][w_i]
  end
  ans << ans_line
end

ans.each do |ans_line|
  puts ans_line.join(" ")
end
