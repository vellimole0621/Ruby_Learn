#백준 2440번 별 찍기 - 3

# 별 찍을 줄 수 받기
n = gets.to_i

for i in 1..n do
  for j in 0..(n-i) do
    print("*")
  end
  if i != n then
  puts("")
  else
    print("")
  end
  end


