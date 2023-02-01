colors = ["red","blue"]

colors[0] = "pink" #직접 인덱스 연결
colors[1..2] = ["white", "black"] # 범위 연결
colors.push("gold") # 끝에 연결
colors << "silver" # 끝에 연결2

p colors

colors.sort!

p colors