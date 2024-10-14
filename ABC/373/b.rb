# 入力
s = gets.chomp.split("")

# Aの位置を設定
current_idx = -1
s.each_with_index do |alpha, idx| 
  if alpha == "A"
    current_idx = idx
  end
end

# 実際にシミュレーション
move_count = 0
("B".."Z").each do |target|
  s.each_with_index do |alpha, idx|
    if alpha == target
      move_count += (current_idx - idx).abs
      current_idx = idx
    end
  end
end

puts move_count
