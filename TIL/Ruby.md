What I learned today about Ruby!

class > 객체 형태 지정에서 사용, 데이터의 표현 메소드 등을 담고 있는 일종의 설계도. 각각의 데이터 메소드는 클래스 맴버가 됨

형식

class Box
#code
end

Rails on Ruby
: 노드 js 처럼 서버를 쉽게 구성하는 것 같음 / 전반적인 각 폴더 별 역할과 연결 흐름에 대해 공부할 필요


입출력

입력
gets.chomp()

출력
puts 
: 한 줄 단위 출력

print
: 계속 출력(줄 바꿈 없음)


p 
: "" 가 붙어서 출력됨

変数（へんすう）
:　소문자로 작성

定数（ていすう）
: 상수 / 대문자로 작성

루비는 모든 것이 객체(object)로 이루어져 있고, 객체란 여러 가지 데이터를 가지고 있는 형태를 말한다.
오브젝트에 메소드(method)를 사용하면 데이터에 여러 가지 명령할 수 있는데.
Ex) "123".length 여기서, "123"은 오브젝트 .length는 메소드로 "123"의 글자수를 알려준다.
각각의 메소드는 어떤 클래스(class)이냐에 따라, 달라진다. 클래스는 객체 마다의 종류이다.
Ex) "123" String Class // 123 Float Class

Class 랑 Method 확인
:
puts ~~ .class
puts ~~ .methods

문자열
:
""을 쓰는 경우, 개행(改行　かいぎょう) /n 줄 바꿈 /t 탭 이 가능하지만
''을 쓰는 경우는 불가능하다.
행
""의 경우, #{~~} ~~에 변수 예를 들면, #{3*3} 같은 경우도 연산해서 나오지만
''는 불가능

Ex) puts "hello" + "hi" => "hello hi" // name = jason , pust "hi #{jason}"

메소드
:
메소드 뒤에 !가 붙은 경우 메소드 명령후 그 값으로 변수값이 바뀐다.
Ex) A = "abc", puts A.upcase => "ABC" 그러나 A는 아직 "abc"
puts A.upcase! => "ABC" A 값은 "ABC"로 바뀜

:
메소드 뒤에 ?가 붙은 경우, 메소드 명령의 결과가 참인지 거짓인지 나온다. (ture or false)
Ex) A = "json" , puts A.empty? => false // puts A.include?("a") => true

배열 配列（はいれつ）
:
colors = ["red", "blue", "yellow"]

p colors[0] // "red"
p colors[-1] // "yellow" 인덱스 역으로 감
p colors[0..2] // 범위 인덱스 0부터 2 ["red", "blue", "yellow"]
p colors[0...2] // 범위 인덱스 0부터 2 직전까지 ["red", "blue"]
p colors[5] // nil 없음

*배열 메소드 sort 재정렬(알파벳 순) / size 크기
* reverse 반대로 배열
* include?(~) 배열에 값 포함 여부 확인
* shuffle 배열 안 값 섞음
* empty? 빈 배열인지 확인
* (0..25).to_a // [0,1,2,3,..,25] 배열 만듦

배열의 값을 입력하는 방법
:
colors[0] = "pink" // 직접 인덱스 연결
colors[1..2] = ["white", "black"] // 범위 연결
colors.push("gold") // 끝에 연결
colors << "silver" // 끝에 연결2

* 메소드 pop 가장 마지막 값을 뽑아 출력, 배열의 그 값은 삭제됨
* 메소드 shift 가장 앞에 값을 뽑아 출력, 배열의 그 값은 삭제됨
* 메소드 uniq 배열 내 중복된 값을 삭제함
* 메소드 join 문자열을 하나로 모와서 출력, if s.join(' ') 이렇게 출력하면 문자열간 ' ' 공백을 두고 출력함

해쉬(ハッシュ)
：
해쉬는 key　ー　value 관계로, 오브젝트를 저장할 수 있는 객체이다. 예를 들어서 이름과 점수를 저장한다면
Ex) taguchi 200 가 된다.

해쉬를 만드는 방법으로는 세가지가 있는데
Ex) 1. scores = {"taguchi" => 200, "fkoji" => 400}
2. scores = {:taguchi => 200, :fkoji =>400}
3. scores = {taguchi: 200, fkoji: 400}

해쉬 출력
Ex) p scores[:taguchi] // 200
p scores // {:taguchi=>200, :fkoji=>600}
p scores.size // 2 크기
p scores.keys // [:taguchi, :fkoji] Key 
p scores.values // [200, 400] Value
p scores.has_key?(:taguchi) // true

해쉬 입력
Ex) scores[:fkoji] = 600

변환 変更（へんこう）
문자 => 숫자
Ex) y = "3" => y.to_i  // 3 정수
y.to_f // 3.0 실수

숫자 => 문자
Ex) x = 50 => x.to_s // 문자열

해쉬 => 배열
Ex) p scores.to_a

배열 => 해쉬
Ex) p scores.to_h

*메소드 연속 사용 가능 Ex) p scores.to_a.to_h // 결과적으로 해쉬가 됨

# 기법

puts "hello" == puts %Q(hello) == puts %(hello)
puts 'hello' == puts %q(hello)

" ' 을 쓰고 싶은 경우 \를 넣도록 한다.

배열의 경우에는 %W or %w이 있다.
p ["red", "blue"] == p %W(red blue)
p ['red', 'blue'] == p %w(red blue)

문자열 % 식// 文字列（もじれつ） 대입
%s // 문자열 
%d // 정수
%f // 실수

p "name: 10s" % "taguchi" // "name:    taguchi"
p "name: %-10s" % "taguchi" // "name: taguchi   "

p "id: %05d, rate: %10.2f" % [355, 3.284]

또 다른 표현법
Ex) p printf("name: %10s\n", "taguchi") // "name:   taguchi" 개행 표시X
p sprintf("name: %10s\n", "taguchi") // "name:   taguchi\n" 개행 표시O
p sprintf("id: %05d, rate: %10.2f\n", 355, 3.284)

* scores.each { |k, v| puts "#{k}, #{v}"} // luke, 100 k는 key v는 value를 의미한다

each 
> 배열의 인수 각각을 꺼냄
Ex) numbers = [1, 2, 3, 4, 5] 
> numbers.each { |number| puts number} // 1 2 3 4 5
Ex ) colors ['red', 'green', 'blue'] 
> colors.each do |color|
>   puts color
> end


if
# &&(and) ||(or) !(not)

score = gets.to_i #정수를 입력 받음

if score > 80 then // then 생략 가능
    puts "great!"
elsif score > 60 then // then 생략 가능
    puts "good!"
else
    puts "so so ..."
end

*if문 한 줄 작성
 puts "great" if score > 80 // 입력값 80 이상 시 great 출력


unless
:
if와 달리 조건에 해당 하지 않는 경우 출력 == if !~

Ex)
n = 1
unless n.zero?
    puts "not 0"
end

case

signal = gets.chomp // 1행 입력 받음

case signal
when "red" then // then 생략 가능
    puts "stop!" 
when "green", "blue" // 여러 개도 가능
    puts "go
else
    puts "Wrong signal"
end

while

i = 0

while i < 10 do
    puts "#{i}: hello"
    i = i + 1 // i += 1
end

times

10.times do |i| // 10번 반복, |i| i를 변수로 사용함, 시작 0 기본
    puts "#{i} hello"
end

==

10.times { |i| puts "#{i}: hello"}

upto 
=> 10.upto(14) { |n| puts n} // 10 11 12 13 14

downto
=> 14.downto(10) { |n| puts n} // 14 13 12 11 10

step
=> 1.step(10,2) { |n| puts n} // 1 3 5 7 9 /// 1이 10이 될 때까지 +2 반복
=> 10.step(1,-2) { |n| puts n} // 10 8 6 4 2 /// 10이 1이 될 때까지 -2 반복 

for

for i in 15..20 do
    p i
end
// 15 ~ 20

for color in ["red", "blue"] do
    p color
end 
// 
"red", "blue"

for name, score in {taguchi:200, fkoji:400} do
    puts "#{name}: #{score}"
end
// 
taguchi: 200 fkoji: 400

== // 같은 식을 each 사용 표현

["red", "blue"].each do |color|
    p color
end

{taguchi:200, fkoji:400}.each do |name, score|
    puts "#{name}: #{score}"
end

loop 

i = 0

loop do 
    p i
    i += 1
end
// 
무한 루프 막기 위해 break 
해당 조건에서 작동하지 않고 스킵 하기 위해 next 사용

# 기본 i는 0으로 설정
10.times do |i|
    if i == 7 then
        break // 6에서 멈추게 함
    end
    p i
end

10.times do |i|
    if i == 7 then
        next // 7에서 skip
    end
    p i
end

10.times { |i| puts "#{i}: Hello!"}

메소드 メソッド

def sayHi(name) // 메소드 작성 name == 인스턴스(引数　ひきすう)
    puts "hi!"
end

sayHi("taguchi") // 메소드 사용 가능

def sayHi(name = "tom")
    return "hi #{name}" // return으로 사용 가능
end

sayHi // hi tom

*def 안에 선언된 변수는 그 블록 밖에서는 사용이 불가능하다.

class クラス

class User // 클래스의 이름의 시작은 대문자로
 
    def sayHi
        puts "Hi!"
    end

end

tom = User.new (User 클래스에 인스턴스를 tom에 할당)
tom.sayHi

//

Ex)

class User

    def initialize(name) // 인스턴스 변수 정의하는 메소드
        @name = name // 인스턴스 앞에 @를 붙이는 경우 인스턴스 변수가 된다. 그 경우 def 밖에서도 사용이 가능하고. 인스턴스 내에서 사용 가능하다.
    end

    def sayHi
        puts "hi! i am #{@name}"
    end

end

tom = User.new("tom")
tom.sayHi

#230202

tom.name = "json"
p tom. name 

// 인스턴스 변수 값을 설정하거나 읽기 위해서 메소드를 만들지 않고 하는 기법

attr_accessor :name
// setter: name=(value) 값을 설정
// getter: name

attr_reader :name // getter만 하고 싶은 경우 사용

self
:
self는 메소드를 받고 있는 객체를 의미한다. 예시에서의 tom
Ex) self.name == @name이 된다.
self는 의미가 명확한 경우 생략 가능 => name
EX) puts "Hi! I'm #{@name}" == "Hi! I'm {self.name}" == "Hi! I'm {name}"

클래스 메소드 クラスメソッド

class User

    @@count = 0 // 클래스 변수

    VERSION = 1.1 // 버전(대문자로 작성)

    def initialize(name)
        @@count += 1
        @name = name
    end
    
    def self.info // 클래스 메소드 작성법
        puts "#{VERSION}: User Class, #{@@count} instances."
    end

end

tom = User.new("tom")
bob = User.new("bob")
steve = User.new("steve")
User.info
p User::VERSION // 버전 출력 :: 사용

상속 継承（けいしょう）
：

class AdminUser < User // User　클래스를 상속받음, User 클래스의 메소드 사용 가능

    def sayHi // 상속한 클래스의 메소드와 동일한 이름의 메소드를 만드는 경우 오버라이드(オーバーライド）가 되어 덮어쓰기 가능
        puts "hi! i am #{@name}"
    end

end

메소드 접근(엑세스) アクセス権（けん）
:
public / protected(일반적으로 사용 안 함) / private

기본적으로 public 이 디폴트 값이다.(단, initialize 메소드와 클래스 밖 메소드는 자동적 private)

private 로 지정을 하면 밖에서는 호출이 불가능하다.
Ex)

class User
    
    private
     def sayPrivate
        puts"Hi!"
     end
end

tom = User.new("tom")
tom.sayHi // 불가능

그러나 클래스 안에서는 호출 가능, 다른 메소드 안에 그 메소드 작성 가능
Ex)
    def sayHi
        puts "Hello"
        sayPrivate // 의미적으로 self.sayPrivate 이지만 self. 생략 가능
    end

User.new.sayHi 
// Hello Hi! // private 도 호출 가능 

상속된 경우 나 오버라이드에서도 출력이 가능한 점이 다른 객체지향 언어와 다른 점이므로 주의 요함

모듈 (module)
:

def movie_encode
end

def movie_export
end
// 메소드의 이름이 다른 메소드와 겹칠 우려가 존재 따라서 모듈을 사용함

모듈 사용법
Ex)
module Movie

    VERSION = 1.1

    def self.encode
        puts "encoding..."
    end

    def self.export
        puts "exporting..."
    end

end

Movie.encode
Movie.export
p Movie::VERSION

모듈 믹스인 ミックスイン
:
상속 관계가 아닌 클래스에서도 사용 가능한 메소드를 만들기 위한 방법

module Debug

    def info    //self를 안 붙이면 다른 인스턴스 변수에서도 사용 가능
        puts "#{self.class} debug info ..."
    end

end

class Player
    include Debug // 모듈 믹스인 적용
end

class Monster
    include Debug
end

Player.new.info
Monster.new.info

예외 처리(例外)
:
오류 방지 또는 오류가 발생했을 때 메세지 작성 

루비 표준 오류의 경우)

x = gets.to_i

begin // 예외 발생 예상되는 시작 점
    p 100 /x
rescue => ex // 예외 발생 시 처리 예외를 ex 오브젝트에 넣음
    p ex.message / / 오류 메세지 출력 
    p ex.class // 객체 클래스 출력 
    puts "stopped!"
ensure // 예외 발생 시에 마지막 출력하고 싶은 문장
    puts "-- END --"
end

스스로 예외 클래스 만들기)_

class MyError < standardError; end // 루비 표준 예외 클래스 standardError 상속

x = gets.to_i

begin
    if x == 3
        raise MyError // if x == 3인 경우 MyError 발생 raise 사용
    end
    p 100 / x
rescue MyError // MyError 발생
    puts "not 3!"
end


