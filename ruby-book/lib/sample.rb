def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<を使うと最後の識別子をインデントさせることができます。
  TEXT
end

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<を使うと最後の識別子をインデントさせることができます。
  TEXT
end

def some_method
  <<~TEXT
  \ これはヒアドキュメントです。
  \ <<を使うと最後の識別子をインデントさせることができます。
  TEXT
end


name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

a = 'Ruby'
a.prepend(<<TEXT)
Java
Python
TEXT
puts a


b = <<TEXT.upcase
Hello,
Good-bye,
TEXT
puts b

c = [<<TEXT1, <<TEXT2]
Alice
Bob
TEXT1
Matz
Junichi
TEXT2

sprintf('%0.3f', 1.2)

`このコードは、Rubyのsprintfメソッドを使用して、浮動小数点数を特定のフォーマットの文字列に変換しています。
具体的には、以下の点に注目してコードを解説します。

sprintfメソッド:

sprintfは、指定されたフォーマットに基づいて文字列を生成するメソッドです。
このメソッドは、String#%メソッドやKernel#printfメソッドと同様の機能を持っています。
フォーマット文字列'%0.3f':

%はプレースホルダーとして働きます。これに続くフォーマット指定子に基づいて、後の引数がどのようにフォーマットされるかを指定します。
0.3fは浮動小数点数をフォーマットするための指定子です。
0: 数値の前に0を付けて指定された幅に合わせることを意味します。この場合、幅の指定がないので、この0は実際には影響を与えません。
.3: 小数点以下を3桁で表示することを意味します。
f: 浮動小数点数を表示することを意味します。
第二引数1.2:

この浮動小数点数が、先述のフォーマット指定子に基づいてフォーマットされます。
このコードを実行すると、出力は"1.200"になります。1.2という数値が、小数点以下3桁でのフォーマットに変換され、最後の2つの桁は0で埋められて表示されます。`

'%0.3f' % 1.2

[10, 20, 30].join

'Hi!'*10

puts "\u41"


sprintf '%#b', (0b1010 & 0b1100)

sprintf '%#b', value:

`sprintfは指定したフォーマットに基づいて文字列を生成するメソッドです。
'%#b'はフォーマット文字列で、整数を2進数（ビット）形式で表現し、さらに0bのプレフィックスをつけて出力します。
0b1010 および 0b1100:

0bのプレフィックスは、後に続く数値が2進数であることを示します。
したがって、0b1010は10進数での10、0b1100は10進数での12を意味します。
& 演算子:

& はビット単位のAND演算子です。この演算子は、両方のオペランド（この場合は0b1010と0b1100）の各ビットが1の場合にのみ、結果の対応するビットを1にします。

& 演算子:

& はビット単位のAND演算子です。この演算子は、両方のオペランド（この場合は0b1010と0b1100）の各ビットが1の場合にのみ、結果の対応するビットを1にします。
具体的なビット単位のAND操作は次のようになります：

markdown
Copy code
  1010  (これは 0b1010)
& 1100  (これは 0b1100)
-------
  1000  (結果)
この結果、0b1000は10進数での8を意味します。

したがって、sprintf '%#b', (0b1010 & 0b1100) は 0b1000 という文字列を返します。`


# 1100と1000のビットごとのAND操作と掛け算は別物だぞ。
`
はい、正確に言うと、AND操作と掛け算は異なる操作です。しかし、2進数の掛け算の特定のケースでは、AND操作の結果と一致することがあります。それについて詳しく見てみましょう。

ビット単位のAND操作:

２つの数値の各ビット位置を比較して、両方が1の場合にのみ結果のその位置を1にします。それ以外の場合は0にします。
例: 1100 AND 1000 の場合

markdown
Copy code
1100
1000
----
1000
結果は 1000 です。

2進数の掛け算:

通常の掛け算の手法を使用して、2つの2進数を掛けます。掛ける数の各ビットで掛けられる数を掛け、それをすべて合計します。
例: 1100 × 1000 の場合

scss
Copy code
    1100   (掛けられる数)
×   1000   (掛ける数)
--------
    0000   (1100 × 0)
+  0000    (1100 × 0、1桁左にずらす)
+  0000    (1100 × 0、2桁左にずらす)
+ 1100     (1100 × 1、3桁左にずらす)
--------
1100000
結果は 1100000 です。

この例からもわかるように、1100 AND 1000 と 1100 × 1000 の結果は異なります。
`


# フォーマット文字列とは何ですか？

`
フォーマット文字列とは、文字列内に特定のプレースホルダーやエスケープシーケンスを持つ文字列のことを指します。これを利用することで、変数や値を特定の形式やスタイルで文字列に埋め込むことができます。

プログラミング言語によっては、printfやsprintfのような関数やメソッドを使用して、フォーマット文字列を使って値を整形することが一般的です。

以下は、フォーマット文字列の一般的な例とその説明です：

%s - 文字列としての値を代入。
%d - 整数としての値を代入。
%f - 浮動小数点数としての値を代入。
%.2f - 浮動小数点数を代入するが、小数点以下2桁に制限。
例えば、Rubyのsprintfを使った場合：

ruby
Copy code
name = "Alice"
age = 30
sprintf("My name is %s and I am %d years old.", name, age)
このコードは "My name is Alice and I am 30 years old." という文字列を生成します。

フォーマット文字列は、値を整形したり、特定の形式の文書やメッセージを出力する際に非常に役立ちます。ただし、不正なフォーマット文字列の使用や、ユーザーからの入力を検証せずにフォーマット文字列として使用すると、セキュリティの脆弱性を引き起こす可能性があるため、注意が必要です。
`

sprintf '%#b', (0b1010 | 0b1100)

sprintf '%#b', (0b1010 >> 1)

`
(0b1010 >> 1):

まずこの部分から説明します。
0b1010は2進数での数値を示しており、10進数での10を意味します。
>>は右シフト演算子と呼ばれるもので、指定されたビット数だけ指定された数値を右にシフトします。この場合、1ビットだけ右にシフトします。
0b1010（10進数での10）を1ビット右にシフトすると、0b0101（10進数での5）になります。
`


# 右にシフトとは

`
「右にシフト」という操作をもう少し具体的に説明します。

ビットを「右にシフトする」とは、ある数値のすべてのビットを指定された数だけ右に移動させる操作を意味します。これにより、最も右側（最下位）のビットがシフトの回数分、削除され、左側（最上位）からは0が追加されます。

たとえば、数値0b1010（これは2進数の表記で10進数での10を意味します）を1ビット右にシフトする場合の動作を見てみましょう。

元の数値： 1010

1ビット右にシフトすると：

　　101 (最も右の0が削除され、左からは0が追加されます）

結果： 0101（これは2進数で5を意味します）

このように、ビットを右にシフトする操作は、特定のビット位置を右に移動させるものであり、同時に数値を2で割る操作と等価です（ただし、整数の場合）。1ビット右シフトは、数値を2で割った結果と同じになります。2ビット右シフトすると、数値を4で割った結果と同じになる、というように進んでいきます。
`

sprintf '%#b', ~0b1010

## ビットごとの論理反転とは

`
ビットごとの論理反転は、ビット列（数値の2進数表現）内の各ビットの値を反転する操作を指します。具体的には、0のビットを1に、1のビットを0に変更します。

ビットごとの論理反転は、多くのプログラミング言語において、ビット単位のNOT演算子（~など）を用いて実現されます。

例えば、以下はビットごとの論理反転を示すものです：

元のビット列: 1010
論理反転後: 0101

上記の例では、1010というビット列を論理反転すると、0101というビット列になります。

この論理反転の操作は、特にビット演算を多用するプログラムや、低レベルなプログラミングで重要な役割を果たします。
`


`
Rubyには整数の大きさに上限がない。
また、内部的には2の補数形式で表されている。
符号ビットも反転させて、1を足す。

sprintf '%#b', ~0b1

1だが、00000000000・・1と同じ
すべて反転させて
..10

`



def greet(country)

  country || return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'Hello'
  end
end

greet(nil)

`
理由としては、Rubyの||演算子は、左側の値がfalseまたはnilの場合に、右側の値を評価するという動作をします。しかし、returnは式ではなく、制御の流れを変えるステートメントの一部です。そのため、このような場面で||の右側にreturnを使用することはできません。
`

`
式・・・何らかの値と返すもの（変数に値を代入できるもの）
文・・・変数宣言、for文、if文、swich文やセミコロンでくぎるもの。
                    for文の実行結果を変数に代入するということは考えられない。
`



status = 'error'

message =
  unless status == 'OK'
    '何か異常があります'
  else
    '正常です'
  end

message

country = 'italy'

case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'Ciao'
else
  '???'
end


case country
when 'japan', '日本'
  'こんにちは'
when 'us', 'アメリカ'
  'Hello'
when 'italy', 'イタリア'
  'Ciao'
else
  '???'
end

country = 'Itary'

case
when country == 'Itary'
  'こんにちは'
end


n = 11
message = n > 10 ? '10より大きい' : '10以下'
message


def greet(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greet

def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greet


def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'Bar'
end

def point( x,y = x)
  puts "x=#{x}, y=#{y}"
end


'watch'.include?('at')

1.even?

nil.nil?


''.nil?


def multiple_of_three?(n)
  n % 3 == 0
end


def greet = 'Hello!'

def add(a, b) = a + b

  a = 
    if true
      '真です'
    else
      '偽です'
    end


    b = def foo; end


`Rubyのオブジェクトにはオブジェクトそのものではなく、オブジェクトへの参照が格納されている。`


a = 'hello'
b = 'hello'
a.object_id
b.object_id


def m(d)
  d.object_id
end

a = 'hello'
b = 'hello'
c = b

def m!(d)
  d.upcase!
end

Date.today

require 'date'
Date.today


s = "abc\ndef"

a = [1, 2, 3]

b = ['a', 2, 'apple']

a = [[10, 20, 30], [40, 50 ,60], [70, 80, 90]]
a = [1, 2, 3]


a = [1, 2, 3]
a [1] = 20
a

a = [1, 2, 3]
a [5] = 20
a

a = [1, 2, 3]
a << 20
a

a = []
a << 1
a << 2

a, b = [1, 2]

e, f = [100, 200, 300]


14.divmod(3)
quo_rem = 14.divmod(3)
"商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

a, b = 14.diamod(3)
"商=#{a}, 余り=#{b}"

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
sum

a = [1, 2, 3, 1, 2, 3]
a.delete(1)

a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.even?
end
a



#下記の出力結果が40となる。n=4だから。
numbers = [1, 2, 3, 4]
sum = 0
sum_value = 100
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
sum_value

numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| 
  sum += n 
}
sum

numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.map { |n| new_numbers << n * 10 }
new_numbers


numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
new_numbers

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
even_numbers

numbers = [1, 2, 3, 4, 5, 6]
non_multiple_of_three = numbers.reject { |n| n % 3 == 0 }

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even? }
even_number


numbers = [1, 2, 3, 4]
numbers.sum

numbers = [1, 2, 3, 4]
numbers.sum { |n| n * 2 }

numbers = [1, 2, 3, 4]
numbers.sum(5)

charas = ['a', 'b', 'c']
charas.sum('-')

charas = ['a', 'b', 'c']
charas.join('-')

charas = ['a', 2, 'b', 3]
charas.join

charas = ['a', 'b', 'c']
charas.sum('>') { |c| c.upcase }


['a', 'b', 'c'].map { |s| s.upcase }
['a', 'b', 'c'].map(&:upcase)


[1, 2, 3, 4, 5, 6].select { |n| n % 3 == 0 }

[9, 10, 11, 12, 13].map { |n| n.to_s(16) }

[1, 2, 3, 4].map do |n|
  m = n * 4
  m.to_s
end


range = 1...4
range.include?(4)

a = [1, 2, 3, 4, 5]
a[1..3]


def liquid?(temperature)
  0 <= temperature && temperature < 100
end

def liquid?(temperature)
  (1..100).include?(temperature)
end

def charge(age)
  case age
  when 0..5
    0
  when 5..12
    300
  when 13..18
    600
  else
    1000
  end
end

(1..5).to_a
(1...5).to_a

('a'..'e').to_a

[*1..5]

numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
sum

sum = 0
(1..4).each { |n| sum += n }
sum


numbers = []
(1..10).step(2) { |n| numbers << n }
numbers

a = [1, 2, 3, 4, 5, 6]
a[1, 3]

a = [1, 2, 3, 4, 5, 6]
a.values_at(0, 2, 4)


a = [1, 2, 3]
a[a.size - 1]

a = [1, 2, 3]
a[-1]
a[-2]
a[-3]

a = [1, 2, 3]
a.last
a.last(2)


a = [1, 2, 3, 4, 5]
a[1, 3] = 100

a = []
a.push(1)
a.push(2, 3)

a = [1, 2, 3, 1, 2, 3]
a.delete(2)
a

a = [1]
b = [2, 3]

a | b

a + b
a.concat(b)

require 'set'
a = Set[1, 2, 3]
b = Set[3, 4, 5]
a | b
a - b
a & b


e, *f = 100, 200, 300

e = 100, 200, 300

a, *b, c, d = 1, 2, 3

a = []
b = [2, 3]
a.push(1)
a.push(*b)

def greet(*name)
  "#{name.join('と')}、こんにちは！"
end

greet('田中さん')
greet('田中さん', '鈴木さん')

a = [1, 2, 3]
[a]

%W!a b c!

%w(mitsu\ kitade fuji)

%w(
  mitsu 
  kitade 
  fuji
)

'Ruby'.chars

'a b srs'.split(' ')

a = Array.new(12) { |n| n % 4 + 1}

fruits = %W(apple orange melon)
fruits.each_with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}

fruits = %W(apple orange melon)

fruits.map.with_index { |fruit, i| "#{i}: #{fruit}"}

fruits.delete_if.with_index { |fruit, i| fruit.include?("a") && i.odd?}

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
areas = []
dimensions.each do |length, width|
  areas << length * width
end
areas

dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

(a, b), i = [[10, 20], 30]

%W(1 20 300).map{ _1.rjust(3, '_') }

%w(japan us italy).map.with_index { [_2, _1] }

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n; sum|
  sum = 10
  sum += n
  puts sum
end

a = [1, 2, 3]
a.delete(100) { 'NG' }


numbers = %w(10 20 30 40 50)
numbers[2..]

sum = 0
5.times { |n| sum += n }
sum

sum = 0
5.times { sum += 1 }
sum

a = []
10.upto(14) { |n| a << n }
a

a = []
1.step(10, 2) { |n| a << n }
a

a = []
while a.size < 5
  a << 1
end
a

a = []
begin
  a << 1
end while false
a

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers 
  sum += n
end
sum

numbers = [1, 2, 3, 4, 5]
loop do
  n = numbers.sample
  puts n
  break if n == 5
end


def functional(n)
  n > 0 ? n * functional(n - 1) : 1
end
functional(5)


ret = 
  while true
    break
  end
ret

fruits = %w(apple melon orange)
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even?
  puts n
end


fruits = %w(apple melon orange)
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
  numbers.each do |n|
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end

