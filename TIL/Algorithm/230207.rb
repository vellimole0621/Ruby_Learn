#백준 10039번 : 평균 점수

#전체 점수 담을 변수 생성
scores = 0

#5번 반복
for i in 0..4
  #각 점수 입력
  each_score = gets.to_i
  #40점 넘으면 바로 값 추가, 넘지 못하면 40점으로 값 추가
if each_score > 40
  scores += each_score
else
  scores += 40
end
end

#전체 점수 5로 나눠서 평균값 출력
puts(scores/5)



