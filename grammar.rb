# #ヒアドキュメントについて叩いてみる##
# <<の次に来るのは終端の文字を自分で指定するためで何でもいい
puts 'ヒアドキュメントについて'
query = <<~SQL
  select *
      from my_table;
SQL
p query
puts query
# ダブルクォテーションで式展開ができる
# {a}

# #パーセント記法について理解したい##
# パーセント記法では文字列を囲む記号をプログラマ自身が指定できる
puts
puts 'パーセント記法について'
a = %(test)
p a
# 文字列の中でダブルクォーとを使いたい時とか
b = '"aiueo"'
puts b

## シンボルについて
# シンボルは同一、文字列リテラルでは毎回新たにオブジェクトを生成する
puts
puts 'シンボルについて'
p 'foo1'.object_id
p 'foo1'.object_id

p :foo1.object_id
p :foo1.object_id

p 1.0 == 1
p 1.0.eql?(1)

### 変数と値について
puts
puts '変数と値について'
v1 = 'foo1'
v2 = v1
p v1.object_id
p v2.object_id
p v1.equal?(v2) #=> true
v1 += 'bar'
p v1.equal?(v2) #=> false
p v1.object_id
p v2.object_id

### 破壊的メソッドについて
puts
puts '破壊的メソッドについて'
v1 = 'foo1'
v2 = v1
p v1.chop #=> "foo" これは非破壊的で参照はそのまま、最後の一文字を抜いた文字列を返すメソッド
p v2 #=> "foo1" そのまま
p v1.chop! #=> "foo" これは破壊的で参照も変わる
p v2 #=> "foo" これも変わる!!
p v1.object_id
p v2.object_id

### 範囲について
puts
puts '範囲について'
10.times do |i|
  p i if (i == 2)..(i == 5)
end

p (1..10).include?(5) #=> true
p (1..6).cover?((2..5)) #=> false
#=> 2 3 4 5

# ##正規表現について
puts
puts '正規表現について'

puts(/ruby/ =~ 'i like ruby and you ruby?')
puts Regexp.last_match.pre_match
# puts Regexp.last_match(0)
puts Regexp.last_match(0)
puts Regexp.last_match.post_match
puts $`
puts $&
puts $'

## 真偽地について
puts
puts '真偽値について'
puts 'true' if true
puts 'false' if !(false)