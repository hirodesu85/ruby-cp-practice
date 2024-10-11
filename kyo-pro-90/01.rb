# 入力受け取り
n, l = gets.split(" ").map(&:to_i)
k = gets.to_i
a = gets.split(" ").map(&:to_i)

# 各パーツの長さを計算する
distances = []
distances << a[0]
(1...n).each do |i|
  distances << a[i] - a[i-1]
end
distances << l - a[-1]

# 二分探索で解を求めていく
ok, ng = 0, l
while ng-ok > 1 do
  mid = (ok + ng) / 2

  count, length_sum = 0, 0
  distances.each do |d|
    length_sum += d
    if length_sum >= mid
      count += 1
      length_sum = 0
    end
  end

  if count >= k+1
    ok = mid
  else
    ng = mid
  end
end

p ok
