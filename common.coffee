# comment
console.log 'hello'

###
1. var is not needed
2. ; is not needed
3. {} is presented by indent
4. () can be abbreviated
###


###
var score = 82;
if (score > 70) {
    alert("OK");
}
###

# if you wanna write row javascript:
# `alert("hello");`


# ** String handling ** #

score = 82
# text decomplession
console.log "score: #{score}"
console.log "score*10: #{score*10}"
if (score >70)
    console.log "OK"


# unwanted indents are automatically removed
message = "this
is
    a
    very
    long
    message
    "

# heredocument
# special characters are automatically escaped!
html = """
<div id="main"></div>
"""


# ** Array ** #

a = [1,3,5]
b = [
    1 # no comma
    3 # indents are needed
    5
]

m = [0..5]
n = [0...5]

console.log m[1..3]
console.log m[..3]
console.log m[1..-2]
m[0..1] = ["a","b","c"]
console.log "ikuwow"[1..3]

# ** Object ** #

m =
    name: "degawa"
    score:
        first: 73
        second: 99
        third: 100
# like yaml

console.log "first score is..."
if m.score.first > 80 then console.log "Good!" # inline
console.log "Bad..." if m.score.first < 80 # after

console.log "second score is..."
if m.score.second > 80 then console.log "Good!" else console.log "Bad..."

# ternary operator is not allowed!
console.log "third score is..."
msg = if m.score.third > 80 then "Good!" else "Bad..."
console.log msg


# ** comparative operator ** #
## == => ===
## isnt

x = 3
console.log "ok" if 10 < x < 20
# true -> yes on
# false -> no off
# ! not
# ex. console.log "OK" if answer is yes and signal is off

console.log "OK" if 5 in [1,3,5]

console.log "key exists" if "name" of m


# ** Switch statement ** #

signal = 'yellow'
console.log "signal is #{signal}"

switch signal
    when "red"
        console.log "STOP!"
    when "green", "bule"
        console.log "GO!"
    when "yellow" then console.log "CAUTION!"
    else console.log("What?")
    # すげえrubyっぽい


# ** loop statement ** #
sum = 0
for i in [0..10]
    sum += i
console.log(sum)

sum2 = 0
sum += i for i in [0..10] by 2
console.log(sum2)

sum3 = 0
total = (sum3 += i for i in [0..9])
console.log(total)

itr = 0
sum4 = 0
total = while itr < 10
    sum4 += i
    itr++

console.log total


# ** array  ** #

console.log color for color in ["red", "blue", "green"] when color isnt "blue"

console.log "#{index}: #{color}" for color, index in ["red", "blue", "green"] when color isnt "blue"


results =
    degawa: 38
    ikuo: 39
    ajinomoto: 88

for name, score of results # not in
    console.log "#{name}: #{score}"


# ** functions ** #
# hello = -> console.log "Hello!"
hello = (name = "ikuwow") ->
    console.log "Hello, #{name}!"
    # 最後に評価された値がそのまま返り値になる

hello()

do -> console.log "console"

