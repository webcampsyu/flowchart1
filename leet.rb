input_line = gets #標準入力
strings = input_line.to_s.split('') #標準入力された値を文字列に変換し、split('')で１文字ずつ分割

convert = [] #書き終えた文字列を格納するための配列を初期化
strings.each do |chara| #配列の中身を一つずつ取り出しループする
  case chara # caseはcaseに指定したものとcaseの後に出てくるwhenで指定したものを比較していくというもの
             # すなわち比較対象(chara)が一つの場合はcaseで記述した方が良い
             # 比較対象が複数のときはif式を使用することになる
  when "A" then
    convert.push("4") # .pushは配列に要素を追加するメソッドであり、引数に指定したものを追加
  when "E" then
    convert.push("3")
  when "G" then
    convert.push("6")
  when "I" then
    convert.push("1")
  when "O" then
    convert.push("0")
  else #どれも当てはまらない場合
    convert.push(chara)
  end 
end #ループ終了

output = convert.join # joinメソッドは配列の要素を連結して文字列を作り出す
puts output