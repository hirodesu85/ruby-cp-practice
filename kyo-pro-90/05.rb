# NOTE:subtask1まではこれで通る

#入力
n, b, k = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

# 動的計画法
dp = Array.new(n+1) {Array.new(b, 0)}

dp[0][0] = 1

(0...n).each do |i|
  (0...b).each do |j|
    (0...k).each do |k_i|
      nex = (10*j + c[k_i]) % b
      dp[i+1][nex] += dp[i][j]
      dp[i+1][nex] %= 1_000_000_007
    end
  end
end

puts dp[n][0]
