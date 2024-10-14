# 入力
n = gets.to_i
a = gets.split(" ").map(&:to_i)
q = gets.to_i
b = []
q.times do
  b << gets.to_i
end

# 前処理
a.sort!
res = []

b.each do |b_rate|
  # 二分探索を行う
  ok = 0
  ng = n-1
  while ng-ok > 1
    mid = (ok+ng) / 2
    if b_rate >= a[mid]
      ok = mid
    else
      ng = mid
    end
  end
  ok_abs = (a[ok] - b_rate).abs
  ng_abs = (a[ng] - b_rate).abs
  res << [ok_abs, ng_abs].min
end

# 出力
res.each do |res_value|
  puts res_value
end
