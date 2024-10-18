# 入力
n, m = gets.split(" ").map(&:to_i)

# 前準備
taro_flag = Array.new(n, true)
result = []

# 情報から太郎かどうかを判断
(0...m).each do |i|
  _a, b = gets.split(" ")
  a = _a.to_i

  if taro_flag[a-1] && b == "M"
    taro_flag[a-1] = false
    result << "Yes"
  else
    result << "No"
  end
end

# 出力
puts result
