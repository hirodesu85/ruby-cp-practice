# 入力
s = gets.chomp

# .以外の文字を結果に連結していく
res = ""
s.each_char do |char|
  if char != "."
    res += char
  end
end

puts res
