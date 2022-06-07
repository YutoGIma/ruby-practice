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
while i <= 100 
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