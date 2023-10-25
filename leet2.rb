# 別の記述方法
def convert_leet(chara) # 引数に文字列を与えることで、条件に応じた文字列を返すメソッド
  case chara
  when "A" then
    "4"
  when "E" then
    "3"
  when "G" then
    "6"
  when "I" then
    "1"
  when "O" then
    "0"
  else
    chara
  end 
end 

input = gets
strings = input.to_s.split('')

convert = []
strings.each do |chara|
  convert.push(convert_leet(chara))
end 

output = convert.join
puts output