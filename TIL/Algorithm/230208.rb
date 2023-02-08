#백준 2443번 : 별 찍기 - 6

#필요한 정수 입력
N = gets.to_i

#필요한 정수만큼 줄 반복
for i in 0..(N-1)
  #필요한 공백 수 계산해 입력
  a = i-1
  #필요한 별 개수 계산해 입력
  b = (N * 2) - ( i * 2)
  #공백 변수 만큼 반복해 공백 출력
  for j in 0..a
    printf(" ")
  end
  #별 변수 만큼 반복해 별 출력
  for k in 1..(b-1)
    print("*")
  end
  #줄 바꿈
  puts("")
end




