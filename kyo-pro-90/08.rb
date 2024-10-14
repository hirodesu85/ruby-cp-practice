# 入力
n = gets.to_i
s = gets.chomp

# DP法で解を求める
# dp[i][j] := 文字sのi文字目までの間で抽出する方法のうちatcoderの最初のj文字目間で一致するような抽出の通り数
dp = Array.new(n + 1) {Array.new(8, 0)}
(0...n).each do |i|
  dp[i][0] = 1
end
atcoder = "atcoder"
mod = 10**9 + 7

# dpテーブル更新時にテーブルは0文字目から始めているので更新するときにi, jを+1していることに注意
(0...n).each do |i|
  (0...7).each do |j|
    if s[i] == atcoder[j]
      dp[i+1][j+1] = dp[i][j] + dp[i][j+1]
      dp[i+1][j+1] %= mod
    else
      dp[i+1][j+1] = dp[i][j+1]
      dp[i+1][j+1] %= mod
    end
  end
end

# 出力
puts dp[n][7]
