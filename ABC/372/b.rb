# 入力
m = gets.to_i

# 3の10乗までのリストを作成する
three_list = []
10.downto(0) do |i|
  three_list << 3 ** i
end

# mからリストの中で引ける最も大きな数を引いていく
n = 0
a_list = []
while m > 0
  three_list.each_with_index do |val, idx|
    if m >= val
      m -= val
      n += 1
      a_list << 10 - idx
      break
    end
  end
end

puts n
puts a_list.join(" ")
