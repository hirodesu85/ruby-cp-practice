# nex[i][c] := i文字目以降で最初に文字cが登場するインデックス
def create_nex(s)
  n = s.length
  nex = Array.new(n+1) {Array.new(26, n)}

  (n-1).downto(0) do |i|
    nex[i] = nex[i+1].dup
    nex[i][s[i].ord - "a".ord] = i
  end

  nex
end

# 入力
n, k = gets.split(" ").map(&:to_i)
s = gets.chomp

# 前処理
res = ""
nex = create_nex(s)

# 貪欲法
j = -1
k.times do
  ("a".."z").each do |c|
    idx = c.ord - "a".ord
    k_pos = nex[j+1][idx]

    if n - k_pos >= k - res.length
      res += c
      j = k_pos
      break
    end
  end
end

puts res
