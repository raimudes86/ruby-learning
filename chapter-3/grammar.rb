##ヒアドキュメントについて叩いてみる##
#<<の次に来るのは終端の文字を自分で指定するためで何でもいい
query = <<SQL
select *
    from my_table;
SQL
p query
puts query 
#ダブルクォテーションで式展開ができる
a = 1
s = <<"TEST"
 #{a}
TEST
puts s



puts; puts



##パーセント記法について理解したい##
#パーセント記法では文字列を囲む記号をプログラマ自身が指定できる
a = %*test*
p a
#文字列の中でダブルクォーとを使いたい時とか
b = '"aiueo"'
puts b


## シンボルについて
# シンボルは同一、文字列リテラルでは毎回新たにオブジェクトを生成する
p "foo1".object_id
p "foo1".object_id

p :foo1.object_id
p :foo1.object_id
