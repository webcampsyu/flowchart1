input_lines = readlines # 標準入力を複数行で受け取るためにreadlinesを使用
room = input_lines[0].to_i #配列０番目の要素をroomに格納
air_conditoner = input_lines[1].to_i #配列１番目の要素をair_conditonerに格納

temperature_diff = (room - air_conditoner).abs # .absは絶対値に変換するメソッド

require_time = 0 # require_timeを初期値として、０を代入

if temperature_diff < 5
  require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
    require_time = 30
elsif temperature_diff >= 10 then
      require_time = 60
end 

p require_time