# 出力
print("HelloWorld")
print("\n")
print("今日の晩御飯は鮭です")
print("\n")

# 変数に代入
diner = "カレー"
print("今日の晩御飯は" + diner + "です。")

# リスト定義
fruits = ["バナナ", "イチゴ", "パイナップル", "アップル"]

# for文
for item in fruits do
    print(item + "は果物です。\n")
end

# while文とif文と型変換
i = 1
while i <= 60
    if i % 6 == 0 
        print(i.to_s + "は6の倍数です。\n")
    elsif i % 3 == 0 
        print(i.to_s + "は3の倍数です。\n")
    elsif i % 2 == 0 
        print(i.to_s + "は2の倍数です。\n")
    else 
        print(i.to_s + "\n")
    end
    i = i + 1
end

# 範囲オブジェクト
fiveToTen = 5..10
print(fiveToTen, "\n")
for i in fiveToTen
    print(i, "\n")
end

fiveToTen = 5...10
print(fiveToTen, "\n")
for i in fiveToTen
    print(i, "\n")
end

aToZ = Range.new("a", "d")
print(aToZ, "\n")
for i in aToZ
    print(i, "\n")
end

# 連想配列とeach
object = [{"id" => 1, "name" => "apple"}, {"id" => 2, "name" => "banana"}, {"id" => 3, "name" => "chookie"}, {"id" => 4, "name" => "dango"}]
object.each{|item|
    print(item, "\n")
    print(item["id"], "\n")
    print(item["name"], "\n")
}

# timesメソッド、uptoメソッド、downtoメソッド
10.times{|num|
    print(num)
}
print("\n")
5.upto(12){|num|
    print(num)
}
print("\n")
12.downto(5){|num|
    print(num)
}
print("\n")

# stepメソッド
# オブジェクト.step(limit, stepno){|変数|
#         実行する処理1
#         実行する処理2
#     }
0.step(6, 1.2){|num|
    print(num, "\n")
}