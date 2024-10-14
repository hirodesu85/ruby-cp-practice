# 入力
n, q = gets.split(" ").map(&:to_i)
s = gets.chomp.chars

# A=1, B=2, C=3, それ以外=0に置き換える
def char_to_num(char)
  case char
  when "A" then 1
  when "B" then 2
  when "C" then 3
  else 0
  end
end

s_num = s.map { |char| char_to_num(char) }

# 最初の状態で部分文字列を数える
count = 0
(0..n-3).each do |i|
  if s_num[i] == 1 && s_num[i+1] == 2 && s_num[i+2] == 3
    count += 1
  end
end

# クエリごとに処理をしていく
res = []
q.times do
  # 入力
  x, c = gets.split(" ")
  x_idx = x.to_i - 1

  # 影響する部分だけ調べる
  (x_idx-2..x_idx).each do |i|
    next if i < 0 || i > n-3

    if s_num[i] == 1 && s_num[i+1] == 2 && s_num[i+2] == 3
      count -= 1
    end
  end

  s_num[x_idx] = char_to_num(c)

  (x_idx-2..x_idx).each do |i|
    next if i < 0 || i > n-3

    if s_num[i] == 1 && s_num[i+1] == 2 && s_num[i+2] == 3
      count += 1
    end
  end

  res << count
end

# 出力
puts res
